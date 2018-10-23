:TOP
@ECHO OFF
@TITLE Debug Mode
@ECHO Debug Mode...
@CLS && call "Batch Prompt.bat"
@PAUSE
SET /P "EXIT=Quit Debug Session? (y/n) "
IF /I "%EXIT%"=="y" (EXIT) ELSE (GOTO TOP)
