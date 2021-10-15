//+------------------------------------------------------------------+
//|                                            RegressionChannel.mqh |
//|                                       Copyright 2021, Gregory Jo |
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void createKLMRegressionChannel() {
   createRegressionChannel(KLM_REGRESSION_CHANNEL, InpKLMChannelStartTime, InpKLMChannelEndTime, InpKLMRegressionChannelColor, true);
}

void createKLMFiboLevels() {

   double   klmFiboLevel100Start   = ObjectGetValueByTime(ChartID(), KLM_REGRESSION_CHANNEL, iTime(Symbol(), Period(), iBarShift(Symbol(), Period(), InpKLMChannelStartTime)), 1);
   int      klmFiboCandle100Start = iBarShift(Symbol(), Period(), InpKLMChannelStartTime);
   double   klmFiboLevel100TmpEnd = ObjectGetValueByTime(ChartID(), KLM_REGRESSION_CHANNEL, InpKLMChannelEndTime, 1);
   int      klmFiboCandle100TmpEnd = iBarShift(Symbol(), Period(), InpKLMChannelEndTime);
   int      klmFiboCandle100End = iBarShift(Symbol(), Period(), InpKLMFioLevelsEndTime);
   double   klmFiboLevel100End = klmFiboLevel100Start + ((klmFiboLevel100TmpEnd - klmFiboLevel100Start) / (klmFiboCandle100Start - klmFiboCandle100TmpEnd) * (klmFiboCandle100Start - klmFiboCandle100End));
   createTrendLine(KLM_REGRESSION_CHANNEL + "100", InpKLMChannelStartTime, klmFiboLevel100Start, InpKLMFioLevelsEndTime, klmFiboLevel100End, InpKLMFiboLevelsColor, 2, STYLE_SOLID, "100%");

   double   klmFiboLevel0Start   = ObjectGetValueByTime(ChartID(), KLM_REGRESSION_CHANNEL, iTime(Symbol(), Period(), iBarShift(Symbol(), Period(), InpKLMChannelStartTime)), 2);
   int      klmFiboCandle0Start = iBarShift(Symbol(), Period(), InpKLMChannelStartTime);
   double   klmFiboLevel0TmpEnd = ObjectGetValueByTime(ChartID(), KLM_REGRESSION_CHANNEL, InpKLMChannelEndTime, 2);
   int      klmFiboCandle0TmpEnd = iBarShift(Symbol(), Period(), InpKLMChannelEndTime);
   int      klmFiboCandle0End = iBarShift(Symbol(), Period(), InpKLMFioLevelsEndTime);
   double   klmFiboLevel0End = klmFiboLevel0Start + ((klmFiboLevel0TmpEnd - klmFiboLevel0Start) / (klmFiboCandle0Start - klmFiboCandle0TmpEnd) * (klmFiboCandle0Start - klmFiboCandle0End));
   createTrendLine(KLM_REGRESSION_CHANNEL + "0", InpKLMChannelStartTime, klmFiboLevel0Start, InpKLMFioLevelsEndTime, klmFiboLevel0End, InpKLMFiboLevelsColor, 2, STYLE_SOLID, "0%");

   for( int klmFiboLevelsId = 0; klmFiboLevelsId < ArraySize(klmFiboLevelsArray); klmFiboLevelsId++) {
      double level = (double)klmFiboLevelsArray[klmFiboLevelsId];
      double klmFiboLevelStart = klmFiboLevel0Start + (klmFiboLevel100Start - klmFiboLevel0Start) / 100 * level  ;
      double klmFiboLevelEnd   = klmFiboLevel0End + (klmFiboLevel100End - klmFiboLevel0End) / 100 * level;
        int    lineWidth = 1;
        if(level == 50) lineWidth = 2;

      createTrendLine(KLM_REGRESSION_CHANNEL + DoubleToString(level, 1), InpKLMChannelStartTime, klmFiboLevelStart, InpKLMFioLevelsEndTime, klmFiboLevelEnd, InpKLMFiboLevelsColor, lineWidth, STYLE_SOLID, DoubleToString(level, 1) + "%");
   }
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void createGWLRegressionChannel() {
   createRegressionChannel(GWL_REGRESSION_CHANNEL, InpGWLChannelStartTime, InpGWLChannelEndTime, InpGWLRegressionChannelColor, true);
}

void createGWLFiboLevels() {

   double   gwlFiboLevel0Start   = ObjectGetValueByTime(ChartID(), GWL_REGRESSION_CHANNEL, iTime(Symbol(), Period(), iBarShift(Symbol(), Period(), InpGWLChannelStartTime)), 2);
   int      gwlFiboCandle0Start = iBarShift(Symbol(), Period(), InpGWLChannelStartTime);
   double   gwlFiboLevel0TmpEnd = ObjectGetValueByTime(ChartID(), GWL_REGRESSION_CHANNEL, InpGWLChannelEndTime, 2);
   int      gwlFiboCandle0TmpEnd = iBarShift(Symbol(), Period(), InpGWLChannelEndTime);
   int      gwlFiboCandle0End = iBarShift(Symbol(), Period(), InpGWLFioLevelsEndTime);
   double   gwlFiboLevel0End = gwlFiboLevel0Start + ((gwlFiboLevel0TmpEnd - gwlFiboLevel0Start) / (gwlFiboCandle0Start - gwlFiboCandle0TmpEnd) * (gwlFiboCandle0Start - gwlFiboCandle0End));
   createTrendLine(GWL_REGRESSION_CHANNEL + "0", InpGWLChannelStartTime, gwlFiboLevel0Start, InpGWLFioLevelsEndTime, gwlFiboLevel0End, InpGWLFiboLevelsColor, 2, STYLE_SOLID, "0%");

   double   gwlFiboLevel100Start   = ObjectGetValueByTime(ChartID(), GWL_REGRESSION_CHANNEL, iTime(Symbol(), Period(), iBarShift(Symbol(), Period(), InpGWLChannelStartTime)), 1);
   int      gwlFiboCandle100Start = iBarShift(Symbol(), Period(), InpGWLChannelStartTime);
   double   gwlFiboLevel100TmpEnd = ObjectGetValueByTime(ChartID(), GWL_REGRESSION_CHANNEL, InpGWLChannelEndTime, 1);
   int      gwlFiboCandle100TmpEnd = iBarShift(Symbol(), Period(), InpGWLChannelEndTime);
   int      gwlFiboCandle100End = iBarShift(Symbol(), Period(), InpGWLFioLevelsEndTime);
   double   gwlFiboLevel100End = gwlFiboLevel100Start + ((gwlFiboLevel100TmpEnd - gwlFiboLevel100Start) / (gwlFiboCandle100Start - gwlFiboCandle100TmpEnd) * (gwlFiboCandle100Start - gwlFiboCandle100End));
   createTrendLine(GWL_REGRESSION_CHANNEL + "100", InpGWLChannelStartTime, gwlFiboLevel100Start, InpGWLFioLevelsEndTime, gwlFiboLevel100End, InpGWLFiboLevelsColor, 2, STYLE_SOLID, "100%");

   for( int gwlFiboLevelsId = 0; gwlFiboLevelsId < ArraySize(gwlFiboLevelsArray); gwlFiboLevelsId++) {
      double level = (double)gwlFiboLevelsArray[gwlFiboLevelsId];
      double gwlFiboLevelStart = gwlFiboLevel0Start + (gwlFiboLevel100Start - gwlFiboLevel0Start) / 100 * level  ;
      double gwlFiboLevelEnd   = gwlFiboLevel0End + (gwlFiboLevel100End - gwlFiboLevel0End) / 100 * level;
      int    lineWidth = 1;
      if(level == 50) lineWidth = 2;

      createTrendLine(GWL_REGRESSION_CHANNEL + DoubleToString(level, 1), InpGWLChannelStartTime, gwlFiboLevelStart, TimeCurrent(), gwlFiboLevelEnd, InpGWLFiboLevelsColor, lineWidth, STYLE_SOLID, DoubleToString(level, 1) + "%");
   }


}
//+------------------------------------------------------------------+

void deleteRegressionChannelObject(const string pLocation) {

   string objectName;
   int objsTotal = ObjectsTotal(0, 0, OBJ_REGRESSION);
   while (objsTotal > 0) {
      objsTotal--;
      objectName = ObjectName(0, objsTotal, 0, OBJ_REGRESSION);
      if ( StringFind( objectName, pLocation ) != -1 ) {
         ObjectDelete(0, objectName);
      }
   }
}