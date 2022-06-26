${TOTALTEST_JOBCARD}
//*** SPECIFY JOBCARD IN TOTALTEST PREFERENCES TO SUBSTITUTE
//***
//*** THE JOB CARD MUST INCLUDE A NOTIFY STATEMENT SUCH 
//*** AS NOTIFY=&SYSUID and also a REGION=0M parameter
//*
//********************************************************************
//* Execute Target Runner
//********************************************************************
//RUNNER EXEC PGM=TTTRUNNR
//*
//*
//STEPLIB DD DISP=SHR,DSN=SYS2.CW.CXR17C.SLCXLOAD
//*  where MLCXnnn is MLCX170 OR HIGHER
//        DD DISP=SHR,DSN=HUK0320.DEMO.LOAD.PDSE     
//*       DD DISP=SHR,DSN=<COBOL RUNTIME LOADLIB>
//EMPFILE  DD  DISP=SHR,DSN=HUK0320.DEMO.CWXTDATA
//RPTFILE  DD  SYSOUT=*
//*
//* The following lines will initialize storage to zeroes to avoid 
//* uninitialized storage assertion miscompares.
//CEEOPTS  DD  *
STORAGE(00,00,00)
/*
//TRPARM DD *
*
*        Optionally set your custom exit program here:
* 
EXIT(NONE)
*
REPEAT(${TOTALTEST_REPEAT}),STUBS(${TOTALTEST_STUBS}),
DEBUG(ON)
/* 
//BININP DD DSN=${TOTALTEST_BININP},DISP=OLD
//BINREF DD DSN=${TOTALTEST_BINREF},DISP=OLD
//BINRES DD DSN=${TOTALTEST_BINRES},DISP=OLD
//*
//*      Optionally add your custom DD statements
//*DD1 DD DSN=HLQ.CUSTOM.TEST.LOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//TTOUT   DD  SYSOUT=*
//*SYSIN  DD DSN=dataset.with.required.data,DISP=SHR
//*









