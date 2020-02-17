sbit LCD_RS at RD4_bit;
sbit LCD_EN at RD5_bit;
sbit LCD_D7 at RD3_bit;
sbit LCD_D6 at RD2_bit;
sbit LCD_D5 at RD1_bit;
sbit LCD_D4 at RD0_bit;

// Pin direction
sbit LCD_RS_Direction at TRISD4_bit;
sbit LCD_EN_Direction at TRISD5_bit;
sbit LCD_D7_Direction at TRISD3_bit;
sbit LCD_D6_Direction at TRISD2_bit;
sbit LCD_D5_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD0_bit;

#define CLOCK_MODE 0
#define EDIT_CLOCK_MODE 10
#define STOPWATCH_MODE 1
#define ALARM_MODE 2
#define EDIT_ALARM_MODE 20
#define ALARM_ACTIVATED_MODE 30


int volatile countT=0,mode=0,countTMR0=0,submit;
int volatile hrsT=1,minsT=2,secsT=45;
int volatile minsEDIT=0, hrsEDIT=0;
int volatile countS=0,secsS=0,minsS=0,hrsS=0;
int volatile cntS1,cntS2,secsS1,secsS2,minsS1,minsS2,hrsS1, hrsS2;
int volatile minsA=0,hrsA=0, alarmSET=0;

int  minOldState;


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
     mode=ALARM_ACTIVATED_MODE;
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
     while(submit==0 && mode==EDIT_CLOCK_MODE)
      {
       blink(1,2,hrsEDIT);
       //dok je submit=0, blinkuje sat
       // i podesavamo ga pomocu interapta
     }

     Lcd_Chr(2,1,(hrsEDIT/10)+48);
  Lcd_Chr(2,2,(hrsEDIT%10)+48);
  //submit !=0, ispisi podesene sate

    while(submit==1 && mode== EDIT_CLOCK_MODE)
    {
       blink(4,5,minsEDIT);
       //dok je submit=1, blinkuju minute
       //i podesavamo ih pomocu interapta
     }
     if(submit==2)
     {
     //pritiskom na submit opet
     //podesili smo zeljene minute
     //idemo u mod sata
     hrsT=hrsEDIT;
     minsT=minsEDIT;
     mode=CLOCK_MODE;
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
     //output[5]=':';
     //output[6]=s/10+48;
     //output[7]=s%10+48;
     output[5]='\0';


}
void clockMode()
{
     Lcd_Cmd(_LCD_CLEAR);
     Lcd_Out(1,1,"Clock:");
     convert(hrsT,minsT,secsT,text);
     Lcd_Out(2,1,text);

    while(mode==CLOCK_MODE)
    {
      //blink dvotacka
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
 {    //T1 za sat
     if(PIR1.TMR1IF)
      {
         PIR1.TMR1IF = 0;
       TMR1H = 11;
       TMR1L = 223;

         countT++;
         if(countT==4)
         {calculateTime();}
       }

       // timer 2 interrupt flag  stopwatch
       if (PIR1.TMR2IF == 1)
        {
          countS++;     // povecaj count
          PIR1.TMR2IF = 0;     // obrisi TMR2IF
         if(countS==100)
         {
         izracunajStopericu();
         countS=0;
         }
        }
       //T0 za rad sa dugmetom
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
             OPTION_REG.T0CS = 1;//iskljuci timer0
           }
           else   //ako drzimo dugme
           {  countTMR0++;
              if(countTMR0==80)
              {
                if(mode==EDIT_CLOCK_MODE)
                {
                    if(submit==0)
                     {
                      incHRS(&hrsEDIT);  //drzanje dugmeta inkrement sati
                     }
                     if(submit==1)
                     {
                       incMINS(&minsEDIT); //drzanje dugmeta inkrement minuta
                     }
                }
                if(mode==EDIT_ALARM_MODE)
                {
                    if(submit==0)
                     {
                      incHRS(&hrsA);//drzanje dugmeta inkrement alarm sati
                     }
                     if(submit==1)
                     {
                       incMINS(&minsA);//drzanje dugmeta inkrement alarm minuta
                     }
                }
               countTMR0=0;
               }
           }
      }
   }

    //dugme
    if(INTCON.RBIF==1){
    INTCON.RBIF=0; //vrati flag
    if(OPTION_REG.T0CS==1)//tajmer0 ne broji
    {
    OPTION_REG.T0CS =0;// pokreni timer0, za debouncing

    if(PORTB.RB4)  //edit dugme
     {

         if(mode==CLOCK_MODE)//iz clock mode idi u edit clock
         {
         mode=EDIT_CLOCK_MODE;
          hrsEDIT=hrsT;
          minsEDIT=minsT;
          }

           else if(mode == EDIT_CLOCK_MODE)
           {mode=CLOCK_MODE;}
           if(mode==ALARM_MODE)
           {
            mode=EDIT_ALARM_MODE;//iz alarma idi u edit alarm
           }
           else if(mode==EDIT_ALARM_MODE)
           {
            if(submit==0||submit==1)
            {
             hrsA=0;minsA=0;alarmSET=0;
             mode = ALARM_MODE;
             //ako izlazimo iz alarm moda bez da smo submitovali
             //alarm ostaje nepodesen
            }
            }

     if(mode==ALARM_ACTIVATED_MODE)
      {
       alarmSET=0;
       hrsA=0;minsA=0;
       mode=CLOCK_MODE;
       //kada se aktivira alarm, na edit ga iskljucujemo
       // i prelazimo u mod sata
      }

    }
    else if(PORTB.RB5) //dugme start,pause, increment
     {

       if(mode==STOPWATCH_MODE)
         {
            OPTION_REG.T0CS =0;//ukljuci tmr0 za skokove
            if(TMR2ON_bit==0)
            {TMR2ON_bit=1;}
            else if(TMR2ON_bit==1)
            {TMR2ON_bit=0;}
            //ako je stoperica mod, startuj/zaustavi
           }

        if(mode==EDIT_CLOCK_MODE)//ako je mod sata
        {
           if(submit==0)
           {
            incHRS(&hrsEDIT);
            //dok ne submitujemo inkrementujemo sate
           }
           if(submit==1)
           {
            incMINS(&minsEDIT);//dok ne submitujemo
            //inkrementujemo minute
           }
         }

        if(mode==EDIT_ALARM_MODE)
        {
           if(submit==0)
           {
            incHRS(&hrsA);//dok ne submitujemo inkrementujemo sate alarma
           }
           if(submit==1)
           {
            incMINS(&minsA);//dok ne submituje inkrementujemo minute alarma
           }
         }

        }

     else if(PORTB.RB6)// restart/submit dugme
     {

        if(mode==EDIT_CLOCK_MODE ||mode==EDIT_ALARM_MODE)
        {
            submit++;
            //povecaj submit za edit modove
         }
         if(mode==STOPWATCH_MODE)
         {
            hrsS=0;minsS=0;secsS=0;countS=0;
            TMR2ON_bit=0;
            //restart stopericu
           }


    }
    else if(PORTB.RB7)//promjena moda
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
      while(mode==ALARM_ACTIVATED_MODE);
      PORTC.B4=0;

 }



  void stopWatchMode()
    {
    int cntSOldState=0,secOldState=0,minOldState=0,hrsOldState=0;
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(1,1,"Stopwatch:");
    countS=0;secsS=0;minsS=0;hrsS=0;

    ispisi();
    while(mode==STOPWATCH_MODE)
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

     //countS=0;

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
       while(submit==0 && mode==EDIT_ALARM_MODE)
        {
         blink(1,2,hrsA);
         //podesavamo sate alarma, oni blinkaju
         //pomocu interapta podesavamo
       }

       Lcd_Chr(2,1,(hrsA/10)+48);
       Lcd_Chr(2,2,(hrsA%10)+48);

      while(submit==1 && mode==EDIT_ALARM_MODE)
      {
         blink(4,5,minsA);
         //podesavamo minute alarma
         //one blinkaju
         //pomocu interapta

       }
       if(submit==2)
       {
       mode=ALARM_MODE;
       submit=0;
       alarmSET=1;
       //podeseno, alarm postavljen
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
     while(mode==ALARM_MODE);

 }



void main() {
        //disable comparators
        CMCON.CM2 = 1;
         CMCON.CM1 = 1;
         CMCON.CM0 = 1;

      Lcd_Init();
    Lcd_Cmd(_LCD_CURSOR_OFF);
    //PORTB kao input
      TRISB =0xFF;

      //portB interrupt
    OPTION_REG |= 0b00000000;
    INTCON |= 0b10011000;


     //Timer1 za sat
    T1CON = 0x31;
    INTCON.GIE = 1;
    INTCON.PEIE = 1;
    PIE1.TMR1IE = 1;
    PIR1.TMR1IF = 0;

    TMR1H = 11;
    TMR1L = 223;




    //T0 za dugme
    OPTION_REG.T0CS = 1;//ne tajmeruje jos nista
    OPTION_REG.T0SE =0;
    OPTION_REG.PSA= 0;
    OPTION_REG.PS0=1;
    OPTION_REG.PS1=1;
    OPTION_REG.PS2=1;

    //int T0
    INTCON.TMR0IE =1;
    INTCON.TMR0IF=0;

    TMR0=63;

//for stopwatch Timer2 Registers Prescaler= 16 - TMR2 PostScaler = 10 - PR2 = 125 - Freq = 100.00 Hz - Period = 0.010000 seconds
T2CON |= 72;        // bits 6-3 Post scaler 1:1 thru 1:16
T2CON.TMR2ON = 1;  // bit 2 turn timer2 on;
T2CON.T2CKPS1 = 1; // bits 1-0  Prescaler Rate Select bits
T2CON.T2CKPS0 = 0;
PR2 = 124;         // PR2 (Timer2 Match value)

   PIR1.TMR2IF = 0;            // clear timer2 interupt flag TMR1IF
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
      case CLOCK_MODE:
           {
            clockMode();
            break;
           }

     case EDIT_CLOCK_MODE:
     {
      editClockMode();
      break;
     }
     case STOPWATCH_MODE:
     {
      stopWatchMode();
      break;
     }
     case ALARM_MODE:
     {
      alarmMode();
      break;
     }
     case EDIT_ALARM_MODE:
     {
      editAlarmMode();
      break;
     }
     case ALARM_ACTIVATED_MODE:
     {
      alarmActivatedMode();
      break;
     }

    }
    }
}