#line 1 "C:/Users/User/Desktop/PIC16F877A Digital Clock/kod/PicADigitalClock.c"
sbit LCD_RS at RD4_bit;
sbit LCD_EN at RD5_bit;
sbit LCD_D7 at RD3_bit;
sbit LCD_D6 at RD2_bit;
sbit LCD_D5 at RD1_bit;
sbit LCD_D4 at RD0_bit;


sbit LCD_RS_Direction at TRISD4_bit;
sbit LCD_EN_Direction at TRISD5_bit;
sbit LCD_D7_Direction at TRISD3_bit;
sbit LCD_D6_Direction at TRISD2_bit;
sbit LCD_D5_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD0_bit;









int volatile countT=0,mode=0,countTMR0=0,submit;
int volatile hrsT=1,minsT=2,secsT=45;
int volatile minsEDIT=0, hrsEDIT=0;
int volatile countS=0,secsS=0,minsS=0,hrsS=0;
int volatile cntS1,cntS2,secsS1,secsS2,minsS1,minsS2,hrsS1, hrsS2;
int volatile minsA=0,hrsA=0, alarmSET=0;

int minOldState;


char text[15];


void ispisi()
{
 hrsS1=hrsS/10+48;
 hrsS2=hrsS%10+48;
 Lcd_Chr(2,1,hrsS1);
 Lcd_Chr(2,2,hrsS2);

 Lcd_Chr(2,3,':');

 minsS1=minsS/10+48;
 minsS2=minsS%10+48;
 Lcd_Chr(2,4,minsS1);
 Lcd_Chr(2,5,minsS2);

 Lcd_Chr(2,6,':');

 secsS1=secsS/10+48;
 secsS2=secsS%10+48;
 Lcd_Chr(2,7,secsS1);
 Lcd_Chr(2,8,secsS2);

 Lcd_Chr(2,9,':');
 Lcd_Chr(2,10,48);
 Lcd_Chr(2,11,48);
}
void checkAlarm()
{
 if(hrsA==hrsT)
 {
 if(minsA==minsT)
 {
 mode= 30 ;
 }
 }
}

void calculateTime()
{
 if(mode!=10)
 {
 secsT++;
 if(secsT==60)
 {
 minsT++;secsT=0;
 if(alarmSET==1)
 {checkAlarm();}
 }
 if(minsT==60)
 {
 hrsT++;minsT=0;
 }
 }
 countT=0;

}
void blink(int pos1, int pos2,int unit)
{
 if(countT==2)
 {
 Lcd_Chr(2,pos1,' ');
 Lcd_Chr(2,pos2,' ');
 }
 if(countT==0)
 {
 Lcd_Chr(2,pos1,(unit/10)+48);
 Lcd_Chr(2,pos2,(unit%10)+48);
 }
}
void incHRS(int *hrs)
{
 (*hrs)++;
 if((*hrs)==24)
 {(*hrs)=0;}

}
incMINS(int *mins)
{
 (*mins)++;
 if((*mins)==60)
 {(*mins)=0;}


}


void editClockMode()
{
 submit=0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Edit Clock:");
 Lcd_Out(2,1,text);
 while(submit==0 && mode== 10 )
 {
 blink(1,2,hrsEDIT);


 }

 Lcd_Chr(2,1,(hrsEDIT/10)+48);
 Lcd_Chr(2,2,(hrsEDIT%10)+48);


 while(submit==1 && mode==  10 )
 {
 blink(4,5,minsEDIT);


 }
 if(submit==2)
 {



 hrsT=hrsEDIT;
 minsT=minsEDIT;
 mode= 0 ;
 submit=0;
 secsT=0;
 }
 }



void convert(int h, int m, int s, char *output)
{
 output[0]=h/10+48;
 output[1]=h%10+48;
 output[2]=':';
 output[3]=m/10+48;
 output[4]=m%10+48;



 output[5]='\0';


}
void clockMode()
{
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Clock:");
 convert(hrsT,minsT,secsT,text);
 Lcd_Out(2,1,text);

 while(mode== 0 )
 {

 if(countT==2)
 {
 Lcd_Chr(2,3,32);

 }
 if(countT==0)
 {
 Lcd_Chr(2,3,':');
 if(minsT!=minOldState)
 {
 convert(hrsT,minsT,secsT,text);
 Lcd_Out(2,1,text);
 minOldState=minsT;

 }
 }
 }
}
 izracunajStopericu()
 {
 secsS++;
 if(secsS==60)
 {minsS++;
 secsS=0;}
 if(minsS==60)
 {hrsS++;
 minsS=0;}
 }


 void interrupt()
 {
 if(PIR1.TMR1IF)
 {
 PIR1.TMR1IF = 0;
 TMR1H = 11;
 TMR1L = 223;

 countT++;
 if(countT==4)
 {calculateTime();}
 }


 if (PIR1.TMR2IF == 1)
 {
 countS++;
 PIR1.TMR2IF = 0;
 if(countS==100)
 {
 izracunajStopericu();
 countS=0;
 }
 }

 if(TMR0IF_bit)
 {
 countTMR0++;
 TMR0IF_bit=0;
 TMR0=63;
 if(countTMR0>=3)
 {
 if(PORTB.B5!=1)
 {
 countTMR0=0;
 OPTION_REG.T0CS = 1;
 }
 else
 { countTMR0++;
 if(countTMR0==80)
 {
 if(mode== 10 )
 {
 if(submit==0)
 {
 incHRS(&hrsEDIT);
 }
 if(submit==1)
 {
 incMINS(&minsEDIT);
 }
 }
 if(mode== 20 )
 {
 if(submit==0)
 {
 incHRS(&hrsA);
 }
 if(submit==1)
 {
 incMINS(&minsA);
 }
 }
 countTMR0=0;
 }
 }
 }
 }


 if(INTCON.RBIF==1){
 INTCON.RBIF=0;
 if(OPTION_REG.T0CS==1)
 {
 OPTION_REG.T0CS =0;

 if(PORTB.RB4)
 {

 if(mode== 0 )
 {
 mode= 10 ;
 hrsEDIT=hrsT;
 minsEDIT=minsT;
 }

 else if(mode ==  10 )
 {mode= 0 ;}
 if(mode== 2 )
 {
 mode= 20 ;
 }
 else if(mode== 20 )
 {
 if(submit==0||submit==1)
 {
 hrsA=0;minsA=0;alarmSET=0;
 mode =  2 ;


 }
 }

 if(mode== 30 )
 {
 alarmSET=0;
 hrsA=0;minsA=0;
 mode= 0 ;


 }

 }
 else if(PORTB.RB5)
 {

 if(mode== 1 )
 {
 OPTION_REG.T0CS =0;
 if(TMR2ON_bit==0)
 {TMR2ON_bit=1;}
 else if(TMR2ON_bit==1)
 {TMR2ON_bit=0;}

 }

 if(mode== 10 )
 {
 if(submit==0)
 {
 incHRS(&hrsEDIT);

 }
 if(submit==1)
 {
 incMINS(&minsEDIT);

 }
 }

 if(mode== 20 )
 {
 if(submit==0)
 {
 incHRS(&hrsA);
 }
 if(submit==1)
 {
 incMINS(&minsA);
 }
 }

 }

 else if(PORTB.RB6)
 {

 if(mode== 10  ||mode== 20 )
 {
 submit++;

 }
 if(mode== 1 )
 {
 hrsS=0;minsS=0;secsS=0;countS=0;
 TMR2ON_bit=0;

 }


 }
 else if(PORTB.RB7)
 {
 mode++;
 if(mode>10&&mode<20)
 {mode=0;}
 else if(mode>20)
 {mode =2;}
 if(mode==3)
 {
 mode=0;
 }
 }

 }
 }

}

 void alarmActivatedMode()
 {
 PORTC.B4=1;
 submit=15;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"ALARM!");
 convert(hrsA,minsA,0,text);
 Lcd_Out(2,1,text);
 while(mode== 30 );
 PORTC.B4=0;

 }



 void stopWatchMode()
 {
 int cntSOldState=0,secOldState=0,minOldState=0,hrsOldState=0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Stopwatch:");
 countS=0;secsS=0;minsS=0;hrsS=0;

 ispisi();
 while(mode== 1 )
 {
 if(hrsS==0 && minsS==0 && secsS==0&& countS==0)
 {ispisi();}
 if(countS!=cntSOldState)
 {
 cntS1=countS/10+48;
 cntS2=countS%10+48;
 Lcd_Chr(2,10,cntS1);
 Lcd_Chr(2,11,cntS2);
 cntSOldState=countS;
 }
 if(minsS!=minOldState)
 {
 minsS1=minsS/10+48;
 minsS2=minsS%10+48;
 Lcd_Chr(2,4,minsS1);
 Lcd_Chr(2,5,minsS2);
 minOldState=minsS;
 }
 if(secsS!=secOldState)
 {
 secsS1=secsS/10+48;
 secsS2=secsS%10+48;
 Lcd_Chr(2,7,secsS1);
 Lcd_Chr(2,8,secsS2);
 secOldState=secsS;
 }



 }
 TMR2ON_bit=0;
 countS=0;

 }



void editAlarmMode()
{
 submit=0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Edit Alarm:");
 convert(hrsA,minsA,0,text);
 Lcd_Out(2,1,text);
 while(submit==0 && mode== 20 )
 {
 blink(1,2,hrsA);


 }

 Lcd_Chr(2,1,(hrsA/10)+48);
 Lcd_Chr(2,2,(hrsA%10)+48);

 while(submit==1 && mode== 20 )
 {
 blink(4,5,minsA);




 }
 if(submit==2)
 {
 mode= 2 ;
 submit=0;
 alarmSET=1;

 }
 }

void alarmMode()
{
if(alarmSET==1)
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Alarm:");
 convert(hrsA,minsA,0,text);
 Lcd_Out(1,7,text);
 Lcd_Out(2,1,"Press to Edit");
 }
 if(alarmSET==0)
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Alarm Not Set:");
 Lcd_Out(2,1,"Press EDIT");
 }
 while(mode== 2 );

 }



void main() {

 CMCON.CM2 = 1;
 CMCON.CM1 = 1;
 CMCON.CM0 = 1;

 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);

 TRISB =0xFF;


 OPTION_REG |= 0b00000000;
 INTCON |= 0b10011000;



 T1CON = 0x31;
 INTCON.GIE = 1;
 INTCON.PEIE = 1;
 PIE1.TMR1IE = 1;
 PIR1.TMR1IF = 0;

 TMR1H = 11;
 TMR1L = 223;





 OPTION_REG.T0CS = 1;
 OPTION_REG.T0SE =0;
 OPTION_REG.PSA= 0;
 OPTION_REG.PS0=1;
 OPTION_REG.PS1=1;
 OPTION_REG.PS2=1;


 INTCON.TMR0IE =1;
 INTCON.TMR0IF=0;

 TMR0=63;


T2CON |= 72;
T2CON.TMR2ON = 1;
T2CON.T2CKPS1 = 1;
T2CON.T2CKPS0 = 0;
PR2 = 124;

 PIR1.TMR2IF = 0;
 PIE1.TMR2IE = 1;
 TMR2ON_bit=0;

 TRISC.B4=0;
 PORTC.B4=0;


 minOldState=99;

 TRISC.B4=0;

 while(1)
 {
 switch(mode)
 {
 case  0 :
 {
 clockMode();
 break;
 }

 case  10 :
 {
 editClockMode();
 break;
 }
 case  1 :
 {
 stopWatchMode();
 break;
 }
 case  2 :
 {
 alarmMode();
 break;
 }
 case  20 :
 {
 editAlarmMode();
 break;
 }
 case  30 :
 {
 alarmActivatedMode();
 break;
 }

 }
 }
}
