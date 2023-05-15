//+------------------------------------------------------------------+
//|                                                       Inputs.mqh |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
input group             "---------- KLM (MN & W1) ---------"
input bool              InpKLMInsideBarsShow = true;
input datetime          InpKLMInsideBarsHighDate = D'2021.07.13';
input datetime          InpKLMInsideBarsLowDate = D'2021.07.19';
input datetime          InpKLMInsideBarsEndDate = D'2021.12.30';
input color             InpKLMInsideBarsChannelColor = clrSnow;
input color             InpKLMInsideBarsTrendlineColor = clrTomato;

input group             "---------- GWL (D1) ---------"
input ENUM_TIMEFRAMES   InpGWLTimeframe = PERIOD_D1;
input datetime          InpGWLChannelStartTime = D'2020.04.01';
input datetime          InpGWLChannelEndTime = D'2021.12.31';
input color             InpGWLRegressionChannelColor = clrSnow;
input string            InpGWLFiboLevels = "25,38.2,61.8,75,90";
input datetime          InpGWLFioLevelsEndTime = D'2021.12.31';
input color             InpGWLFiboLevelsColor = clrTomato;
input bool              InpGWLInsideBarsShow = true;
input datetime          InpGWLInsideBarsHighDate = D'2021.11.26';
input datetime          InpGWLInsideBarsLowDate = D'2021.11.26';
input datetime          InpGWLInsideBarsEndDate = D'2021.12.01';
input color             InpGWLInsideBarsChannelColor = clrSnow;
input color             InpGWLInsideBarsTrendlineColor = clrTomato;

input group             "---------- SGL (H1) ---------"
input ENUM_TIMEFRAMES   InpSGLTimeframe = PERIOD_H1;
input datetime          InpSGLChannelStartTime = D'2021.10.06';
input datetime          InpSGLChannelEndTime = D'2021.11.11';
input color             InpSGLRegressionChannelColor = clrBeige;
input string            InpSGLFiboLevels = "25,38.2,50,61.8,75,90";
input datetime          InpSGLFioLevelsEndTime = D'2021.10.15';
input color             InpSGLFiboLevelsColor = clrDarkKhaki;
input datetime          InpSGLInsideBarsStart = D'2021.12.30';
input datetime          InpSGLInsideBarsEnd = D'2021.12.30';
input bool              InpSGLInsideBarsShow = true;
input color             InpSGLInsideBarsChannelColor = clrBeige;
input color             InpSGLInsideBarsTrendlineColor = clrDarkKhaki;


//
//
//input group             "---------- FNL ---------"
//input ENUM_TIMEFRAMES   InpSGLTimeframe = PERIOD_M5;
//input datetime          InpSGLChannelStartTime = D'2021.09.03';
//input datetime          InpSGLChannelEndTime = D'2021.10.01';
//input color             InpSGLRegressionChannelColor = clrSilver;
//input string            InpSGLFiboLevels = "25,38.2,50,61.8,75,90";
//input datetime          InpSGLFioLevelsEndTime = D'2021.10.15';
//input color             InpSGLFiboLevelsColor = clrDarkGray;

input group             "---------- Sonstiges ---------"
bool                      InpShowErrorMessages = true;

//+------------------------------------------------------------------+

void convertInpStringsToArray(){
       //StringSplit(InpKLMFiboLevels, StringGetCharacter(",", 0), klmFiboLevelsArray);
       StringSplit(InpGWLFiboLevels, StringGetCharacter(",", 0), gwlFiboLevelsArray);
       StringSplit(InpSGLFiboLevels, StringGetCharacter(",", 0), sglFiboLevelsArray);
}
