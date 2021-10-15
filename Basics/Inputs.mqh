//+------------------------------------------------------------------+
//|                                                       Inputs.mqh |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+

input group             "---------- KLM ---------"
input ENUM_TIMEFRAMES   InpKLMTimeframe = PERIOD_MN1;
input datetime          InpKLMChannelStartTime = D'2008.07.01';
input datetime          InpKLMChannelEndTime = D'2020.03.30';
input color             InpKLMRegressionChannelColor = clrSnow;
input string            InpKLMFiboLevels = "25,38.2,61.8,75,90";
input datetime          InpKLMFioLevelsEndTime = D'2021.12.31';
input color             InpKLMFiboLevelsColor = clrTomato;

input group             "---------- GWL ---------"
input ENUM_TIMEFRAMES   InpGWLTimeframe = PERIOD_D1;
input datetime          InpGWLChannelStartTime = D'2021.05.25';
input datetime          InpGWLChannelEndTime = D'2021.10.08';
input color             InpGWLRegressionChannelColor = clrBeige;
input string            InpGWLFiboLevels = "25,38.2,50,61.8,75,90";
input datetime          InpGWLFioLevelsEndTime = D'2021.10.15';
input color             InpGWLFiboLevelsColor = clrDarkKhaki;

input group             "---------- Sonstiges ---------"
bool                      InpShowErrorMessages = true;

//+------------------------------------------------------------------+

void convertInpStringsToArray(){
       StringSplit(InpKLMFiboLevels, StringGetCharacter(",", 0), klmFiboLevelsArray);
       StringSplit(InpGWLFiboLevels, StringGetCharacter(",", 0), gwlFiboLevelsArray);
}
