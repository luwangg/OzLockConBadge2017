#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdlib.h>

//#include "usbdrv.h"
//#include "oddebug.h"

#define LED_LEFT 0b00000001
#define LED_RIGHT 0b00010000
#define SW1 0b00001000

volatile unsigned int mode_counter = 0;


ISR(PCINT0_vect) {
    //_delay_ms(50);   //wait for half second
   // PORTB ^= ~0b11101110;       //turn both LEDs off 
    if(mode_counter < 16) { 
        mode_counter++;
    }
    else{
        mode_counter = 0;
    }
    //PORTB ^=  0b00010001;       //turn LED off 
    _delay_ms(20); 
}

void setup() {
    GIMSK = 0b00100000;    // turns on pin change interrupts
    PCMSK = 0b00001000;    // turn on interrupts on pins PB3    
    sei();
    //DDRB = 0x00;         //PB as output
    //PORTB &= ~0x00;         //keep all LEDs off}
    DDRB |= _BV(PORTB0);         // OC0A
    //DDRB |= _BV(PORTB1);        // OC0B
    DDRB |= _BV(PORTB4);        // OC1B
    DDRB |= _BV(PORTB3);

    PORTB |= 0b00001000;         //enable pull-ups


  // Timer 0, Channel A
  TCCR0A = _BV(COM0A1) | _BV(WGM01) | _BV(WGM00);
  TCCR0B = _BV(CS00);
  //OCR0A = 128 * 0.75 - 1;     // Duty Cycle
  OCR0A = 256 * 0.99 - 1;     // Duty Cycle

  // Timer 0, Channel B
  //TCCR0A |= _BV(COM0B1);
  //OCR0B = 256 * 0.25 - 1;     // Duty Cycle

  // Timer 1
  TCCR1 = _BV(CS10);
  GTCCR = _BV(COM1B1) | _BV(PWM1B);
  //const uint8_t f = 38000;
  //OCR1C = 8000000.0 / f - 1;  // Frequency
  OCR1B = 256 * 0.99 - 1;     // Duty Cycle
  //OCR1B = f * 0.33;           // Duty Cycle    
}


int main(void)
{
    setup();
    PORTB &= ~0b11100110;       //turn both LEDs on
    uint8_t dir = 1;           // Direction 
    uint16_t stall = 0;        // Initial stall counter
    uint16_t stall_time = 20; // # of clocks to stall at top/bottom
    while(1)
    {
        switch(mode_counter){
           case 0: //low light
                OCR1B = 254;     // Duty Cycle
                OCR0A = 254;     // Duty Cycle
                break;
            case 1: //medium
                OCR1B = 250;     // Duty Cycle
                OCR0A = 250;     // Duty Cycle                PORTB |=  0b00011001;       //turn both LEDs on
                break;
            case 2:
                OCR1B = 127; 
                OCR0A = 127; 
                break;
            case 3: //low/high
                OCR1B = 254; 
                OCR0A = 220; 
                break; 
            case 4: 
                OCR1B = 254; 
                OCR0A = 220; 
                break;
            case 5: { //blink
                stall_time = 10; // # of clocks to stall at top/bottom             
                //sync eyes
                OCR0A = OCR1B;  
                // Stall at the top and bottom, and change direction
                if(OCR0A == 254 || OCR0A == 230) {
                    // Switch directon at top
                    if(OCR0A == 254) dir = -1;
                    else 
                    {   // Disable LED at bottom
                        // And switch direction
                        //DDRB  |= _BV(DDB0);
                        dir = 1; 
                    }
                    while(stall < stall_time) 
                    { 
                        ++stall;
                        _delay_ms(10); 
                    }
                    // Turn output back on if necessary
                    //if(OCR0A == 245) DDRB  &= ~(_BV(DDB0));
                    stall = 0;
                }
                // General case - increment direction either way
                    OCR0A += dir;
                    OCR1B += dir;
                }
                
                break; 
            case 6: //blink eyes alternatively
                stall_time = 10; // # of clocks to stall at top/bottom             
                //sync eyes
                OCR0A = OCR1B;  
                OCR0A = 254;
                OCR1B = 220; 
                stall = 0; 
                while(stall < stall_time/2){
                        ++stall;
                        _delay_ms(10);
                }
                OCR0A = 220;
                OCR1B = 254; 
                stall = 0; 
                while(stall < stall_time/2){
                        ++stall;
                        _delay_ms(10);
                }
                break; 
            case 7: //blink eyes alternatively
                stall_time = 5; // # of clocks to stall at top/bottom             
                //sync eyes
                OCR0A = OCR1B;  
                OCR0A = 254;
                OCR1B = 220; 
                stall = 0; 
                while(stall < stall_time/2){
                        ++stall;
                        _delay_ms(10);
                }
                OCR0A = 220;
                OCR1B = 254; 
                stall = 0; 
                while(stall < stall_time/2){
                        ++stall;
                        _delay_ms(10);
                }
                break; 
           case 8: //left eye only
               OCR0A = 254;
               OCR1B = 255;
               break;
           case 9: //left eye only
               OCR0A = 250;
               OCR1B = 255;
               break;
           case 10: //left eye only
               OCR0A = 220;
               OCR1B = 255;
               break;
           case 11: //right eye only
               OCR0A = 255;
               OCR1B = 250; 
               break;
           case 12: //right eye only
               OCR0A = 255;
               OCR1B = 220; 
               break;
           case 13: //right eye only
               OCR0A = 255;
               OCR1B = 220; 
               break;
           case 14:
               OCR0A = 255;
               OCR1B = 255; 
           default: //everything off
                    OCR0A = 255;
                    OCR1B = 255;
                    break;      
        }
        //DDRB = 0x00;         //PB as output
        //PORTB &= 0b00000000;       //turn LED off
        //_delay_ms(500);   //wait for half second
        //PORTB |= 0b11111111;       //turn LED on 
        //_delay_ms(500);   //wait for half second
    };        
    return 0;
}
