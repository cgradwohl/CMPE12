


#include <WProgram.h>
#include <xc.h>
/* define all global symbols here */
.global main
    

.text
.set noreorder

.ent main
main:
    /* this code blocks sets up the ability to print, do not alter it */
    /*ADDIU $v0,$zero,1
    LA $t0,__XC_UART
    SW $v0,0($t0)
    LA $t0,U1MODE
    LW $v0,0($t0)
    ORI $v0,$v0,0b1000
    SW $v0,0($t0)
    LA $t0,U1BRG
    ADDIU $v0,$zero,12
    SW $v0,0($t0)*/
    
    /*LED5 = RF0*/
    /*THIS TURNS ON LED5 ON PIC32 :)*/
    /*ORI $t0, $zero, 1
    LA $t1, TRISFCLR
    SW $t0, 0($t1)
    SW $t0, LATFSET*/
    
    /*LED5 = RF0*/
    /*THIS TURNS OFF LED5 ON PIC32:)*/
    /*ORI $t0, $zero, 0
    LA $t1, TRISFCLR
    SW $t0, 0($t1)
    SW $t0, LATFSET*/
    
    
    
    /*THIS TURNS ON LD1 ON I/O SHIELD :)*/
    /*ORI $t0, $zero, 1
    LA $t1, TRISECLR
    SW $t1, PORTESET
    SW $t0, 0($t1)
    SW $t0, LATESET*/
    
    
    /*THIS TURNS ON LD1,2,3,4,5,6,7,8 ON I/O SHIELD :)*/
#     first we set $t0 to our output arg, 
#     this will take the arg, convert it to binary and select the pins based on
#     1 or 0. i.e. there are 8 i/o shield leds, 255 in binary is 1111 1111,
#     so this will turn all 8 leds on :) 
    /*
     
    ORI $t0, $zero, 255
#     then we make $t1 our target pin
#     first use triseclr to make apply an output signal to port e  
    LA $t1, TRISECLR
#     next use porteset to read the current state of port e 
    SW $t1, PORTESET
#     now store the value in $t0(output arg) into $t1(port e as an output signal)
    SW $t0, 0($t1)
#     finally store the value in $to(output args) and write to the port using lateset
    SW $t0, LATESET
     
     */
    
    
    /*THIS TURNS Off LD1-LD8 ON I/O SHIELD :)*/
    ORI $t0, $zero, 0
    LA $t1, TRISECLR
    SW $t1, PORTESET
    SW $t0, 0($t1)
    SW $t0, LATESET
    
    
    
    
    
    
    
    /* your code goes underneath this */
    /*LA $a0,HelloWorld
    JAL puts*/
    NOP
    
hmm:    J hmm
    NOP
endProgram:
    J endProgram
    NOP
.end main



.data
HelloWorld: .asciiz "Assembly Hello World \n"
