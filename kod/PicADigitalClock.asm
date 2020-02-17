
_ispisi:

	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hrsS+0, 0
	MOVWF      R0+0
	MOVF       _hrsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _hrsS1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _hrsS1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hrsS+0, 0
	MOVWF      R0+0
	MOVF       _hrsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _hrsS2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _hrsS2+1
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _hrsS1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _hrsS2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _minsS+0, 0
	MOVWF      R0+0
	MOVF       _minsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _minsS1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _minsS1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _minsS+0, 0
	MOVWF      R0+0
	MOVF       _minsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _minsS2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _minsS2+1
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _minsS1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _minsS2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _secsS+0, 0
	MOVWF      R0+0
	MOVF       _secsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _secsS1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _secsS1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _secsS+0, 0
	MOVWF      R0+0
	MOVF       _secsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _secsS2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _secsS2+1
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _secsS1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _secsS2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_end_ispisi:
	RETURN
; end of _ispisi

_checkAlarm:

	MOVF       _hrsA+1, 0
	XORWF      _hrsT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__checkAlarm123
	MOVF       _hrsT+0, 0
	XORWF      _hrsA+0, 0
L__checkAlarm123:
	BTFSS      STATUS+0, 2
	GOTO       L_checkAlarm0
	MOVF       _minsA+1, 0
	XORWF      _minsT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__checkAlarm124
	MOVF       _minsT+0, 0
	XORWF      _minsA+0, 0
L__checkAlarm124:
	BTFSS      STATUS+0, 2
	GOTO       L_checkAlarm1
	MOVLW      30
	MOVWF      _mode+0
	MOVLW      0
	MOVWF      _mode+1
L_checkAlarm1:
L_checkAlarm0:
L_end_checkAlarm:
	RETURN
; end of _checkAlarm

_calculateTime:

	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateTime126
	MOVLW      10
	XORWF      _mode+0, 0
L__calculateTime126:
	BTFSC      STATUS+0, 2
	GOTO       L_calculateTime2
	MOVF       _secsT+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _secsT+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _secsT+0
	MOVF       R0+1, 0
	MOVWF      _secsT+1
	MOVLW      0
	XORWF      _secsT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateTime127
	MOVLW      60
	XORWF      _secsT+0, 0
L__calculateTime127:
	BTFSS      STATUS+0, 2
	GOTO       L_calculateTime3
	MOVF       _minsT+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _minsT+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _minsT+0
	MOVF       R0+1, 0
	MOVWF      _minsT+1
	CLRF       _secsT+0
	CLRF       _secsT+1
	MOVLW      0
	XORWF      _alarmSET+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateTime128
	MOVLW      1
	XORWF      _alarmSET+0, 0
L__calculateTime128:
	BTFSS      STATUS+0, 2
	GOTO       L_calculateTime4
	CALL       _checkAlarm+0
L_calculateTime4:
L_calculateTime3:
	MOVLW      0
	XORWF      _minsT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateTime129
	MOVLW      60
	XORWF      _minsT+0, 0
L__calculateTime129:
	BTFSS      STATUS+0, 2
	GOTO       L_calculateTime5
	MOVF       _hrsT+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _hrsT+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _hrsT+0
	MOVF       R0+1, 0
	MOVWF      _hrsT+1
	CLRF       _minsT+0
	CLRF       _minsT+1
L_calculateTime5:
L_calculateTime2:
	CLRF       _countT+0
	CLRF       _countT+1
L_end_calculateTime:
	RETURN
; end of _calculateTime

_blink:

	MOVLW      0
	XORWF      _countT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__blink131
	MOVLW      2
	XORWF      _countT+0, 0
L__blink131:
	BTFSS      STATUS+0, 2
	GOTO       L_blink6
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_blink_pos1+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_blink_pos2+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_blink6:
	MOVLW      0
	XORWF      _countT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__blink132
	MOVLW      0
	XORWF      _countT+0, 0
L__blink132:
	BTFSS      STATUS+0, 2
	GOTO       L_blink7
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_blink_pos1+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_blink_unit+0, 0
	MOVWF      R0+0
	MOVF       FARG_blink_unit+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_blink_pos2+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_blink_unit+0, 0
	MOVWF      R0+0
	MOVF       FARG_blink_unit+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_blink7:
L_end_blink:
	RETURN
; end of _blink

_incHRS:

	MOVF       FARG_incHRS_hrs+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	MOVF       FARG_incHRS_hrs+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
	MOVF       FARG_incHRS_hrs+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__incHRS134
	MOVLW      24
	XORWF      R1+0, 0
L__incHRS134:
	BTFSS      STATUS+0, 2
	GOTO       L_incHRS8
	MOVF       FARG_incHRS_hrs+0, 0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
L_incHRS8:
L_end_incHRS:
	RETURN
; end of _incHRS

_incMINS:

	MOVF       FARG_incMINS_mins+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	MOVF       FARG_incMINS_mins+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
	MOVF       FARG_incMINS_mins+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__incMINS136
	MOVLW      60
	XORWF      R1+0, 0
L__incMINS136:
	BTFSS      STATUS+0, 2
	GOTO       L_incMINS9
	MOVF       FARG_incMINS_mins+0, 0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
L_incMINS9:
L_end_incMINS:
	RETURN
; end of _incMINS

_editClockMode:

	CLRF       _submit+0
	CLRF       _submit+1
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_editClockMode10:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editClockMode138
	MOVLW      0
	XORWF      _submit+0, 0
L__editClockMode138:
	BTFSS      STATUS+0, 2
	GOTO       L_editClockMode11
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editClockMode139
	MOVLW      10
	XORWF      _mode+0, 0
L__editClockMode139:
	BTFSS      STATUS+0, 2
	GOTO       L_editClockMode11
L__editClockMode114:
	MOVLW      1
	MOVWF      FARG_blink_pos1+0
	MOVLW      0
	MOVWF      FARG_blink_pos1+1
	MOVLW      2
	MOVWF      FARG_blink_pos2+0
	MOVLW      0
	MOVWF      FARG_blink_pos2+1
	MOVF       _hrsEDIT+0, 0
	MOVWF      FARG_blink_unit+0
	MOVF       _hrsEDIT+1, 0
	MOVWF      FARG_blink_unit+1
	CALL       _blink+0
	GOTO       L_editClockMode10
L_editClockMode11:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hrsEDIT+0, 0
	MOVWF      R0+0
	MOVF       _hrsEDIT+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hrsEDIT+0, 0
	MOVWF      R0+0
	MOVF       _hrsEDIT+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_editClockMode14:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editClockMode140
	MOVLW      1
	XORWF      _submit+0, 0
L__editClockMode140:
	BTFSS      STATUS+0, 2
	GOTO       L_editClockMode15
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editClockMode141
	MOVLW      10
	XORWF      _mode+0, 0
L__editClockMode141:
	BTFSS      STATUS+0, 2
	GOTO       L_editClockMode15
L__editClockMode113:
	MOVLW      4
	MOVWF      FARG_blink_pos1+0
	MOVLW      0
	MOVWF      FARG_blink_pos1+1
	MOVLW      5
	MOVWF      FARG_blink_pos2+0
	MOVLW      0
	MOVWF      FARG_blink_pos2+1
	MOVF       _minsEDIT+0, 0
	MOVWF      FARG_blink_unit+0
	MOVF       _minsEDIT+1, 0
	MOVWF      FARG_blink_unit+1
	CALL       _blink+0
	GOTO       L_editClockMode14
L_editClockMode15:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editClockMode142
	MOVLW      2
	XORWF      _submit+0, 0
L__editClockMode142:
	BTFSS      STATUS+0, 2
	GOTO       L_editClockMode18
	MOVF       _hrsEDIT+0, 0
	MOVWF      _hrsT+0
	MOVF       _hrsEDIT+1, 0
	MOVWF      _hrsT+1
	MOVF       _minsEDIT+0, 0
	MOVWF      _minsT+0
	MOVF       _minsEDIT+1, 0
	MOVWF      _minsT+1
	CLRF       _mode+0
	CLRF       _mode+1
	CLRF       _submit+0
	CLRF       _submit+1
	CLRF       _secsT+0
	CLRF       _secsT+1
L_editClockMode18:
L_end_editClockMode:
	RETURN
; end of _editClockMode

_convert:

	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_convert_h+0, 0
	MOVWF      R0+0
	MOVF       FARG_convert_h+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FARG_convert_output+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	INCF       FARG_convert_output+0, 0
	MOVWF      FLOC__convert+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_convert_h+0, 0
	MOVWF      R0+0
	MOVF       FARG_convert_h+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__convert+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVLW      2
	ADDWF      FARG_convert_output+0, 0
	MOVWF      FSR
	MOVLW      58
	MOVWF      INDF+0
	MOVLW      3
	ADDWF      FARG_convert_output+0, 0
	MOVWF      FLOC__convert+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_convert_m+0, 0
	MOVWF      R0+0
	MOVF       FARG_convert_m+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__convert+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVLW      4
	ADDWF      FARG_convert_output+0, 0
	MOVWF      FLOC__convert+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_convert_m+0, 0
	MOVWF      R0+0
	MOVF       FARG_convert_m+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__convert+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVLW      5
	ADDWF      FARG_convert_output+0, 0
	MOVWF      FSR
	CLRF       INDF+0
L_end_convert:
	RETURN
; end of _convert

_clockMode:

	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVF       _hrsT+0, 0
	MOVWF      FARG_convert_h+0
	MOVF       _hrsT+1, 0
	MOVWF      FARG_convert_h+1
	MOVF       _minsT+0, 0
	MOVWF      FARG_convert_m+0
	MOVF       _minsT+1, 0
	MOVWF      FARG_convert_m+1
	MOVF       _secsT+0, 0
	MOVWF      FARG_convert_s+0
	MOVF       _secsT+1, 0
	MOVWF      FARG_convert_s+1
	MOVLW      _text+0
	MOVWF      FARG_convert_output+0
	CALL       _convert+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_clockMode19:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__clockMode145
	MOVLW      0
	XORWF      _mode+0, 0
L__clockMode145:
	BTFSS      STATUS+0, 2
	GOTO       L_clockMode20
	MOVLW      0
	XORWF      _countT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__clockMode146
	MOVLW      2
	XORWF      _countT+0, 0
L__clockMode146:
	BTFSS      STATUS+0, 2
	GOTO       L_clockMode21
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_clockMode21:
	MOVLW      0
	XORWF      _countT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__clockMode147
	MOVLW      0
	XORWF      _countT+0, 0
L__clockMode147:
	BTFSS      STATUS+0, 2
	GOTO       L_clockMode22
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVF       _minsT+1, 0
	XORWF      _minOldState+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__clockMode148
	MOVF       _minOldState+0, 0
	XORWF      _minsT+0, 0
L__clockMode148:
	BTFSC      STATUS+0, 2
	GOTO       L_clockMode23
	MOVF       _hrsT+0, 0
	MOVWF      FARG_convert_h+0
	MOVF       _hrsT+1, 0
	MOVWF      FARG_convert_h+1
	MOVF       _minsT+0, 0
	MOVWF      FARG_convert_m+0
	MOVF       _minsT+1, 0
	MOVWF      FARG_convert_m+1
	MOVF       _secsT+0, 0
	MOVWF      FARG_convert_s+0
	MOVF       _secsT+1, 0
	MOVWF      FARG_convert_s+1
	MOVLW      _text+0
	MOVWF      FARG_convert_output+0
	CALL       _convert+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVF       _minsT+0, 0
	MOVWF      _minOldState+0
	MOVF       _minsT+1, 0
	MOVWF      _minOldState+1
L_clockMode23:
L_clockMode22:
	GOTO       L_clockMode19
L_clockMode20:
L_end_clockMode:
	RETURN
; end of _clockMode

_izracunajStopericu:

	MOVF       _secsS+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _secsS+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _secsS+0
	MOVF       R0+1, 0
	MOVWF      _secsS+1
	MOVLW      0
	XORWF      _secsS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__izracunajStopericu150
	MOVLW      60
	XORWF      _secsS+0, 0
L__izracunajStopericu150:
	BTFSS      STATUS+0, 2
	GOTO       L_izracunajStopericu24
	MOVF       _minsS+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _minsS+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _minsS+0
	MOVF       R0+1, 0
	MOVWF      _minsS+1
	CLRF       _secsS+0
	CLRF       _secsS+1
L_izracunajStopericu24:
	MOVLW      0
	XORWF      _minsS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__izracunajStopericu151
	MOVLW      60
	XORWF      _minsS+0, 0
L__izracunajStopericu151:
	BTFSS      STATUS+0, 2
	GOTO       L_izracunajStopericu25
	MOVF       _hrsS+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _hrsS+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _hrsS+0
	MOVF       R0+1, 0
	MOVWF      _hrsS+1
	CLRF       _minsS+0
	CLRF       _minsS+1
L_izracunajStopericu25:
L_end_izracunajStopericu:
	RETURN
; end of _izracunajStopericu

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

	BTFSS      PIR1+0, 0
	GOTO       L_interrupt26
	BCF        PIR1+0, 0
	MOVLW      11
	MOVWF      TMR1H+0
	MOVLW      223
	MOVWF      TMR1L+0
	MOVF       _countT+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _countT+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _countT+0
	MOVF       R0+1, 0
	MOVWF      _countT+1
	MOVLW      0
	XORWF      _countT+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt154
	MOVLW      4
	XORWF      _countT+0, 0
L__interrupt154:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt27
	CALL       _calculateTime+0
L_interrupt27:
L_interrupt26:
	BTFSS      PIR1+0, 1
	GOTO       L_interrupt28
	MOVF       _countS+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _countS+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _countS+0
	MOVF       R0+1, 0
	MOVWF      _countS+1
	BCF        PIR1+0, 1
	MOVLW      0
	XORWF      _countS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt155
	MOVLW      100
	XORWF      _countS+0, 0
L__interrupt155:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt29
	CALL       _izracunajStopericu+0
	CLRF       _countS+0
	CLRF       _countS+1
L_interrupt29:
L_interrupt28:
	BTFSS      TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
	GOTO       L_interrupt30
	MOVF       _countTMR0+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _countTMR0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _countTMR0+0
	MOVF       R0+1, 0
	MOVWF      _countTMR0+1
	BCF        TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
	MOVLW      63
	MOVWF      TMR0+0
	MOVLW      128
	XORWF      _countTMR0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt156
	MOVLW      3
	SUBWF      _countTMR0+0, 0
L__interrupt156:
	BTFSS      STATUS+0, 0
	GOTO       L_interrupt31
	BTFSC      PORTB+0, 5
	GOTO       L_interrupt32
	CLRF       _countTMR0+0
	CLRF       _countTMR0+1
	BSF        OPTION_REG+0, 5
	GOTO       L_interrupt33
L_interrupt32:
	MOVF       _countTMR0+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _countTMR0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _countTMR0+0
	MOVF       R0+1, 0
	MOVWF      _countTMR0+1
	MOVLW      0
	XORWF      _countTMR0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt157
	MOVLW      80
	XORWF      _countTMR0+0, 0
L__interrupt157:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt34
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt158
	MOVLW      10
	XORWF      _mode+0, 0
L__interrupt158:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt35
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt159
	MOVLW      0
	XORWF      _submit+0, 0
L__interrupt159:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt36
	MOVLW      _hrsEDIT+0
	MOVWF      FARG_incHRS_hrs+0
	CALL       _incHRS+0
L_interrupt36:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt160
	MOVLW      1
	XORWF      _submit+0, 0
L__interrupt160:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt37
	MOVLW      _minsEDIT+0
	MOVWF      FARG_incMINS_mins+0
	CALL       _incMINS+0
L_interrupt37:
L_interrupt35:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt161
	MOVLW      20
	XORWF      _mode+0, 0
L__interrupt161:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt38
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt162
	MOVLW      0
	XORWF      _submit+0, 0
L__interrupt162:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt39
	MOVLW      _hrsA+0
	MOVWF      FARG_incHRS_hrs+0
	CALL       _incHRS+0
L_interrupt39:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt163
	MOVLW      1
	XORWF      _submit+0, 0
L__interrupt163:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt40
	MOVLW      _minsA+0
	MOVWF      FARG_incMINS_mins+0
	CALL       _incMINS+0
L_interrupt40:
L_interrupt38:
	CLRF       _countTMR0+0
	CLRF       _countTMR0+1
L_interrupt34:
L_interrupt33:
L_interrupt31:
L_interrupt30:
	BTFSS      INTCON+0, 0
	GOTO       L_interrupt41
	BCF        INTCON+0, 0
	BTFSS      OPTION_REG+0, 5
	GOTO       L_interrupt42
	BCF        OPTION_REG+0, 5
	BTFSS      PORTB+0, 4
	GOTO       L_interrupt43
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt164
	MOVLW      0
	XORWF      _mode+0, 0
L__interrupt164:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt44
	MOVLW      10
	MOVWF      _mode+0
	MOVLW      0
	MOVWF      _mode+1
	MOVF       _hrsT+0, 0
	MOVWF      _hrsEDIT+0
	MOVF       _hrsT+1, 0
	MOVWF      _hrsEDIT+1
	MOVF       _minsT+0, 0
	MOVWF      _minsEDIT+0
	MOVF       _minsT+1, 0
	MOVWF      _minsEDIT+1
	GOTO       L_interrupt45
L_interrupt44:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt165
	MOVLW      10
	XORWF      _mode+0, 0
L__interrupt165:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt46
	CLRF       _mode+0
	CLRF       _mode+1
L_interrupt46:
L_interrupt45:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt166
	MOVLW      2
	XORWF      _mode+0, 0
L__interrupt166:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt47
	MOVLW      20
	MOVWF      _mode+0
	MOVLW      0
	MOVWF      _mode+1
	GOTO       L_interrupt48
L_interrupt47:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt167
	MOVLW      20
	XORWF      _mode+0, 0
L__interrupt167:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt49
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt168
	MOVLW      0
	XORWF      _submit+0, 0
L__interrupt168:
	BTFSC      STATUS+0, 2
	GOTO       L__interrupt117
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt169
	MOVLW      1
	XORWF      _submit+0, 0
L__interrupt169:
	BTFSC      STATUS+0, 2
	GOTO       L__interrupt117
	GOTO       L_interrupt52
L__interrupt117:
	CLRF       _hrsA+0
	CLRF       _hrsA+1
	CLRF       _minsA+0
	CLRF       _minsA+1
	CLRF       _alarmSET+0
	CLRF       _alarmSET+1
	MOVLW      2
	MOVWF      _mode+0
	MOVLW      0
	MOVWF      _mode+1
L_interrupt52:
L_interrupt49:
L_interrupt48:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt170
	MOVLW      30
	XORWF      _mode+0, 0
L__interrupt170:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt53
	CLRF       _alarmSET+0
	CLRF       _alarmSET+1
	CLRF       _hrsA+0
	CLRF       _hrsA+1
	CLRF       _minsA+0
	CLRF       _minsA+1
	CLRF       _mode+0
	CLRF       _mode+1
L_interrupt53:
	GOTO       L_interrupt54
L_interrupt43:
	BTFSS      PORTB+0, 5
	GOTO       L_interrupt55
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt171
	MOVLW      1
	XORWF      _mode+0, 0
L__interrupt171:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt56
	BCF        OPTION_REG+0, 5
	BTFSC      TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
	GOTO       L_interrupt57
	BSF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
	GOTO       L_interrupt58
L_interrupt57:
	BTFSS      TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
	GOTO       L_interrupt59
	BCF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
L_interrupt59:
L_interrupt58:
L_interrupt56:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt172
	MOVLW      10
	XORWF      _mode+0, 0
L__interrupt172:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt60
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt173
	MOVLW      0
	XORWF      _submit+0, 0
L__interrupt173:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt61
	MOVLW      _hrsEDIT+0
	MOVWF      FARG_incHRS_hrs+0
	CALL       _incHRS+0
L_interrupt61:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt174
	MOVLW      1
	XORWF      _submit+0, 0
L__interrupt174:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt62
	MOVLW      _minsEDIT+0
	MOVWF      FARG_incMINS_mins+0
	CALL       _incMINS+0
L_interrupt62:
L_interrupt60:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt175
	MOVLW      20
	XORWF      _mode+0, 0
L__interrupt175:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt63
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt176
	MOVLW      0
	XORWF      _submit+0, 0
L__interrupt176:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt64
	MOVLW      _hrsA+0
	MOVWF      FARG_incHRS_hrs+0
	CALL       _incHRS+0
L_interrupt64:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt177
	MOVLW      1
	XORWF      _submit+0, 0
L__interrupt177:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt65
	MOVLW      _minsA+0
	MOVWF      FARG_incMINS_mins+0
	CALL       _incMINS+0
L_interrupt65:
L_interrupt63:
	GOTO       L_interrupt66
L_interrupt55:
	BTFSS      PORTB+0, 6
	GOTO       L_interrupt67
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt178
	MOVLW      10
	XORWF      _mode+0, 0
L__interrupt178:
	BTFSC      STATUS+0, 2
	GOTO       L__interrupt116
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt179
	MOVLW      20
	XORWF      _mode+0, 0
L__interrupt179:
	BTFSC      STATUS+0, 2
	GOTO       L__interrupt116
	GOTO       L_interrupt70
L__interrupt116:
	MOVF       _submit+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _submit+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _submit+0
	MOVF       R0+1, 0
	MOVWF      _submit+1
L_interrupt70:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt180
	MOVLW      1
	XORWF      _mode+0, 0
L__interrupt180:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt71
	CLRF       _hrsS+0
	CLRF       _hrsS+1
	CLRF       _minsS+0
	CLRF       _minsS+1
	CLRF       _secsS+0
	CLRF       _secsS+1
	CLRF       _countS+0
	CLRF       _countS+1
	BCF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
L_interrupt71:
	GOTO       L_interrupt72
L_interrupt67:
	BTFSS      PORTB+0, 7
	GOTO       L_interrupt73
	MOVF       _mode+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _mode+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _mode+0
	MOVF       R0+1, 0
	MOVWF      _mode+1
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _mode+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt181
	MOVF       _mode+0, 0
	SUBLW      10
L__interrupt181:
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt76
	MOVLW      128
	XORWF      _mode+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt182
	MOVLW      20
	SUBWF      _mode+0, 0
L__interrupt182:
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt76
L__interrupt115:
	CLRF       _mode+0
	CLRF       _mode+1
	GOTO       L_interrupt77
L_interrupt76:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _mode+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt183
	MOVF       _mode+0, 0
	SUBLW      20
L__interrupt183:
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt78
	MOVLW      2
	MOVWF      _mode+0
	MOVLW      0
	MOVWF      _mode+1
L_interrupt78:
L_interrupt77:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt184
	MOVLW      3
	XORWF      _mode+0, 0
L__interrupt184:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt79
	CLRF       _mode+0
	CLRF       _mode+1
L_interrupt79:
L_interrupt73:
L_interrupt72:
L_interrupt66:
L_interrupt54:
L_interrupt42:
L_interrupt41:
L_end_interrupt:
L__interrupt153:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_alarmActivatedMode:

	BSF        PORTC+0, 4
	MOVLW      15
	MOVWF      _submit+0
	MOVLW      0
	MOVWF      _submit+1
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVF       _hrsA+0, 0
	MOVWF      FARG_convert_h+0
	MOVF       _hrsA+1, 0
	MOVWF      FARG_convert_h+1
	MOVF       _minsA+0, 0
	MOVWF      FARG_convert_m+0
	MOVF       _minsA+1, 0
	MOVWF      FARG_convert_m+1
	CLRF       FARG_convert_s+0
	CLRF       FARG_convert_s+1
	MOVLW      _text+0
	MOVWF      FARG_convert_output+0
	CALL       _convert+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_alarmActivatedMode80:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__alarmActivatedMode186
	MOVLW      30
	XORWF      _mode+0, 0
L__alarmActivatedMode186:
	BTFSS      STATUS+0, 2
	GOTO       L_alarmActivatedMode81
	GOTO       L_alarmActivatedMode80
L_alarmActivatedMode81:
	BCF        PORTC+0, 4
L_end_alarmActivatedMode:
	RETURN
; end of _alarmActivatedMode

_stopWatchMode:

	CLRF       stopWatchMode_cntSOldState_L0+0
	CLRF       stopWatchMode_cntSOldState_L0+1
	CLRF       stopWatchMode_secOldState_L0+0
	CLRF       stopWatchMode_secOldState_L0+1
	CLRF       stopWatchMode_minOldState_L0+0
	CLRF       stopWatchMode_minOldState_L0+1
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	CLRF       _countS+0
	CLRF       _countS+1
	CLRF       _secsS+0
	CLRF       _secsS+1
	CLRF       _minsS+0
	CLRF       _minsS+1
	CLRF       _hrsS+0
	CLRF       _hrsS+1
	CALL       _ispisi+0
L_stopWatchMode82:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode188
	MOVLW      1
	XORWF      _mode+0, 0
L__stopWatchMode188:
	BTFSS      STATUS+0, 2
	GOTO       L_stopWatchMode83
	MOVLW      0
	XORWF      _hrsS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode189
	MOVLW      0
	XORWF      _hrsS+0, 0
L__stopWatchMode189:
	BTFSS      STATUS+0, 2
	GOTO       L_stopWatchMode86
	MOVLW      0
	XORWF      _minsS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode190
	MOVLW      0
	XORWF      _minsS+0, 0
L__stopWatchMode190:
	BTFSS      STATUS+0, 2
	GOTO       L_stopWatchMode86
	MOVLW      0
	XORWF      _secsS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode191
	MOVLW      0
	XORWF      _secsS+0, 0
L__stopWatchMode191:
	BTFSS      STATUS+0, 2
	GOTO       L_stopWatchMode86
	MOVLW      0
	XORWF      _countS+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode192
	MOVLW      0
	XORWF      _countS+0, 0
L__stopWatchMode192:
	BTFSS      STATUS+0, 2
	GOTO       L_stopWatchMode86
L__stopWatchMode118:
	CALL       _ispisi+0
L_stopWatchMode86:
	MOVF       _countS+1, 0
	XORWF      stopWatchMode_cntSOldState_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode193
	MOVF       stopWatchMode_cntSOldState_L0+0, 0
	XORWF      _countS+0, 0
L__stopWatchMode193:
	BTFSC      STATUS+0, 2
	GOTO       L_stopWatchMode87
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _countS+0, 0
	MOVWF      R0+0
	MOVF       _countS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _cntS1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _cntS1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _countS+0, 0
	MOVWF      R0+0
	MOVF       _countS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _cntS2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _cntS2+1
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _cntS1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _cntS2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVF       _countS+0, 0
	MOVWF      stopWatchMode_cntSOldState_L0+0
	MOVF       _countS+1, 0
	MOVWF      stopWatchMode_cntSOldState_L0+1
L_stopWatchMode87:
	MOVF       _minsS+1, 0
	XORWF      stopWatchMode_minOldState_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode194
	MOVF       stopWatchMode_minOldState_L0+0, 0
	XORWF      _minsS+0, 0
L__stopWatchMode194:
	BTFSC      STATUS+0, 2
	GOTO       L_stopWatchMode88
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _minsS+0, 0
	MOVWF      R0+0
	MOVF       _minsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _minsS1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _minsS1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _minsS+0, 0
	MOVWF      R0+0
	MOVF       _minsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _minsS2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _minsS2+1
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _minsS1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _minsS2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVF       _minsS+0, 0
	MOVWF      stopWatchMode_minOldState_L0+0
	MOVF       _minsS+1, 0
	MOVWF      stopWatchMode_minOldState_L0+1
L_stopWatchMode88:
	MOVF       _secsS+1, 0
	XORWF      stopWatchMode_secOldState_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__stopWatchMode195
	MOVF       stopWatchMode_secOldState_L0+0, 0
	XORWF      _secsS+0, 0
L__stopWatchMode195:
	BTFSC      STATUS+0, 2
	GOTO       L_stopWatchMode89
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _secsS+0, 0
	MOVWF      R0+0
	MOVF       _secsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _secsS1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _secsS1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _secsS+0, 0
	MOVWF      R0+0
	MOVF       _secsS+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _secsS2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _secsS2+1
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _secsS1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _secsS2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVF       _secsS+0, 0
	MOVWF      stopWatchMode_secOldState_L0+0
	MOVF       _secsS+1, 0
	MOVWF      stopWatchMode_secOldState_L0+1
L_stopWatchMode89:
	GOTO       L_stopWatchMode82
L_stopWatchMode83:
	BCF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
	CLRF       _countS+0
	CLRF       _countS+1
L_end_stopWatchMode:
	RETURN
; end of _stopWatchMode

_editAlarmMode:

	CLRF       _submit+0
	CLRF       _submit+1
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVF       _hrsA+0, 0
	MOVWF      FARG_convert_h+0
	MOVF       _hrsA+1, 0
	MOVWF      FARG_convert_h+1
	MOVF       _minsA+0, 0
	MOVWF      FARG_convert_m+0
	MOVF       _minsA+1, 0
	MOVWF      FARG_convert_m+1
	CLRF       FARG_convert_s+0
	CLRF       FARG_convert_s+1
	MOVLW      _text+0
	MOVWF      FARG_convert_output+0
	CALL       _convert+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_editAlarmMode90:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editAlarmMode197
	MOVLW      0
	XORWF      _submit+0, 0
L__editAlarmMode197:
	BTFSS      STATUS+0, 2
	GOTO       L_editAlarmMode91
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editAlarmMode198
	MOVLW      20
	XORWF      _mode+0, 0
L__editAlarmMode198:
	BTFSS      STATUS+0, 2
	GOTO       L_editAlarmMode91
L__editAlarmMode120:
	MOVLW      1
	MOVWF      FARG_blink_pos1+0
	MOVLW      0
	MOVWF      FARG_blink_pos1+1
	MOVLW      2
	MOVWF      FARG_blink_pos2+0
	MOVLW      0
	MOVWF      FARG_blink_pos2+1
	MOVF       _hrsA+0, 0
	MOVWF      FARG_blink_unit+0
	MOVF       _hrsA+1, 0
	MOVWF      FARG_blink_unit+1
	CALL       _blink+0
	GOTO       L_editAlarmMode90
L_editAlarmMode91:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hrsA+0, 0
	MOVWF      R0+0
	MOVF       _hrsA+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hrsA+0, 0
	MOVWF      R0+0
	MOVF       _hrsA+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_editAlarmMode94:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editAlarmMode199
	MOVLW      1
	XORWF      _submit+0, 0
L__editAlarmMode199:
	BTFSS      STATUS+0, 2
	GOTO       L_editAlarmMode95
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editAlarmMode200
	MOVLW      20
	XORWF      _mode+0, 0
L__editAlarmMode200:
	BTFSS      STATUS+0, 2
	GOTO       L_editAlarmMode95
L__editAlarmMode119:
	MOVLW      4
	MOVWF      FARG_blink_pos1+0
	MOVLW      0
	MOVWF      FARG_blink_pos1+1
	MOVLW      5
	MOVWF      FARG_blink_pos2+0
	MOVLW      0
	MOVWF      FARG_blink_pos2+1
	MOVF       _minsA+0, 0
	MOVWF      FARG_blink_unit+0
	MOVF       _minsA+1, 0
	MOVWF      FARG_blink_unit+1
	CALL       _blink+0
	GOTO       L_editAlarmMode94
L_editAlarmMode95:
	MOVLW      0
	XORWF      _submit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__editAlarmMode201
	MOVLW      2
	XORWF      _submit+0, 0
L__editAlarmMode201:
	BTFSS      STATUS+0, 2
	GOTO       L_editAlarmMode98
	MOVLW      2
	MOVWF      _mode+0
	MOVLW      0
	MOVWF      _mode+1
	CLRF       _submit+0
	CLRF       _submit+1
	MOVLW      1
	MOVWF      _alarmSET+0
	MOVLW      0
	MOVWF      _alarmSET+1
L_editAlarmMode98:
L_end_editAlarmMode:
	RETURN
; end of _editAlarmMode

_alarmMode:

	MOVLW      0
	XORWF      _alarmSET+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__alarmMode203
	MOVLW      1
	XORWF      _alarmSET+0, 0
L__alarmMode203:
	BTFSS      STATUS+0, 2
	GOTO       L_alarmMode99
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVF       _hrsA+0, 0
	MOVWF      FARG_convert_h+0
	MOVF       _hrsA+1, 0
	MOVWF      FARG_convert_h+1
	MOVF       _minsA+0, 0
	MOVWF      FARG_convert_m+0
	MOVF       _minsA+1, 0
	MOVWF      FARG_convert_m+1
	CLRF       FARG_convert_s+0
	CLRF       FARG_convert_s+1
	MOVLW      _text+0
	MOVWF      FARG_convert_output+0
	CALL       _convert+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_alarmMode99:
	MOVLW      0
	XORWF      _alarmSET+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__alarmMode204
	MOVLW      0
	XORWF      _alarmSET+0, 0
L__alarmMode204:
	BTFSS      STATUS+0, 2
	GOTO       L_alarmMode100
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_PicADigitalClock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_alarmMode100:
L_alarmMode101:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__alarmMode205
	MOVLW      2
	XORWF      _mode+0, 0
L__alarmMode205:
	BTFSS      STATUS+0, 2
	GOTO       L_alarmMode102
	GOTO       L_alarmMode101
L_alarmMode102:
L_end_alarmMode:
	RETURN
; end of _alarmMode

_main:

	BSF        CMCON+0, 2
	BSF        CMCON+0, 1
	BSF        CMCON+0, 0
	CALL       _Lcd_Init+0
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      255
	MOVWF      TRISB+0
	MOVLW      152
	IORWF      INTCON+0, 1
	MOVLW      49
	MOVWF      T1CON+0
	BSF        INTCON+0, 7
	BSF        INTCON+0, 6
	BSF        PIE1+0, 0
	BCF        PIR1+0, 0
	MOVLW      11
	MOVWF      TMR1H+0
	MOVLW      223
	MOVWF      TMR1L+0
	BSF        OPTION_REG+0, 5
	BCF        OPTION_REG+0, 4
	BCF        OPTION_REG+0, 3
	BSF        OPTION_REG+0, 0
	BSF        OPTION_REG+0, 1
	BSF        OPTION_REG+0, 2
	BSF        INTCON+0, 5
	BCF        INTCON+0, 2
	MOVLW      63
	MOVWF      TMR0+0
	MOVLW      72
	IORWF      T2CON+0, 1
	BSF        T2CON+0, 2
	BSF        T2CON+0, 1
	BCF        T2CON+0, 0
	MOVLW      124
	MOVWF      PR2+0
	BCF        PIR1+0, 1
	BSF        PIE1+0, 1
	BCF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
	BCF        TRISC+0, 4
	BCF        PORTC+0, 4
	MOVLW      99
	MOVWF      _minOldState+0
	MOVLW      0
	MOVWF      _minOldState+1
	BCF        TRISC+0, 4
L_main103:
	GOTO       L_main105
L_main107:
	CALL       _clockMode+0
	GOTO       L_main106
L_main108:
	CALL       _editClockMode+0
	GOTO       L_main106
L_main109:
	CALL       _stopWatchMode+0
	GOTO       L_main106
L_main110:
	CALL       _alarmMode+0
	GOTO       L_main106
L_main111:
	CALL       _editAlarmMode+0
	GOTO       L_main106
L_main112:
	CALL       _alarmActivatedMode+0
	GOTO       L_main106
L_main105:
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main207
	MOVLW      0
	XORWF      _mode+0, 0
L__main207:
	BTFSC      STATUS+0, 2
	GOTO       L_main107
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main208
	MOVLW      10
	XORWF      _mode+0, 0
L__main208:
	BTFSC      STATUS+0, 2
	GOTO       L_main108
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main209
	MOVLW      1
	XORWF      _mode+0, 0
L__main209:
	BTFSC      STATUS+0, 2
	GOTO       L_main109
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main210
	MOVLW      2
	XORWF      _mode+0, 0
L__main210:
	BTFSC      STATUS+0, 2
	GOTO       L_main110
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main211
	MOVLW      20
	XORWF      _mode+0, 0
L__main211:
	BTFSC      STATUS+0, 2
	GOTO       L_main111
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main212
	MOVLW      30
	XORWF      _mode+0, 0
L__main212:
	BTFSC      STATUS+0, 2
	GOTO       L_main112
L_main106:
	GOTO       L_main103
L_end_main:
	GOTO       $+0
; end of _main
