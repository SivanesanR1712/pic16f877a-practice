#include <xc.h>
#pragma config WDTE = OFF
void init_config(void){
    TRISB= 0x00;
}
void main(){
    init_config();
    while(1){
        PORTB=0xFF;
        for(unsigned int wait=5000;wait--;);
        PORTB=0x00;
        for(unsigned int wait=5000;wait--;);
    }
}