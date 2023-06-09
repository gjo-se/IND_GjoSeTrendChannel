/*

   IND_GjoSeTrendChannel.mq5
   Copyright 2021, Gregory Jo
   https://www.gjo-se.com

   Version History
   ===============

   1.0.0 Initial version - Copy from IND_GjoSeTrendDetector
   1.2   Delete Gray CandleColor
   1.3   delete all Channels, then create for Timeframe
   1.4   next Level
   1.5   Performance: createFiboLevel only one Time


   ===============

//*/
#include "Basics\\Includes.mqh"

#property   copyright   "2021, GjoSe"
#property   link        "http://www.gjo-se.com"
#property   description "GjoSe TrendChannel"
#define     VERSION "1.5"
#property   version VERSION
#property   strict

#property indicator_chart_window

#property indicator_buffers   0
#property indicator_plots     0

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnInit() {

   createBasicLabels();

   convertInpStringsToArray();

   deleteRegressionChannelObject(KLM_INSIDEBAR_CHANNEL);
   deleteRegressionChannelObject("KLM");
   deleteRegressionChannelObject("GWL");
   deleteRegressionChannelObject("SGL");

   long chartId = ChartID();
   int subWindow = 0;

   switch(Period()) {
   case PERIOD_MN1:
      ChartSetInteger(chartId, CHART_SCALE, subWindow, 4);
      break;
   case PERIOD_W1:
      ChartSetInteger(chartId, CHART_SCALE, subWindow, 3);
      break;
   case PERIOD_D1:
      ChartSetInteger(chartId, CHART_SCALE, subWindow, 2);
      break;
   default:
      break;
   }

   if(InpKLMInsideBarsShow == true) createKLMInsideBarChannel();


   //if(Period() == InpKLMTimeframe) {
   //   createKLMRegressionChannel();
   //   if(InpKLMInsideBarsShow == true) createKLMInsideBarChannel();
   //}

   if(Period() == InpGWLTimeframe) {
      //createKLMRegressionChannel();
      createGWLRegressionChannel();
      if(InpGWLInsideBarsShow == true) createGWLInsideBarChannel();
   }

   if(Period() == InpSGLTimeframe) {
      //createKLMRegressionChannel();
      createGWLRegressionChannel();
      createSGLRegressionChannel();
   }
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnCalculate(const int pRatesTotal,
                const int pPrevCalculated,
                const datetime &pTime[],
                const double &pOpen[],
                const double &pHigh[],
                const double &pLow[],
                const double &pClose[],
                const long &pTickVolume[],
                const long &pVolume[],
                const int &pSpread[]         ) {

   // in newM1Bar verschieben
   if(createFiboLevels == true){
       createGWLFiboLevels();
       createSGLFiboLevels();

       createFiboLevels = false;
   }

   return(pRatesTotal);
}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
