#include <xc.h>
#pragma config WDTE = OFF
void init_config(void){
    TRISB0=1;
    TRISD=0x00;
    PORTD=0x00;
}
/*void main(){
init_config();
while(1){
if(RB0==0){
    RD0=!RD0;
    for(unsigned int wait=50000;wait--;);
}
}
}*/

void main(){
    init_config();
   
    unsigned char once=1;
    while(1){
         for(unsigned int wait=500;wait--;);
    
    if(RB0==0 && once==1)
    {
        RD0=!RD0;
        once=0;
    }
    if(RB0==1){
        once=1;
    }
}
}