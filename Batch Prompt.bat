<!-- :
@SET "LOCATION=%CD%"
@ECHO OFF
@TITLE Think ^>^>^<^>^> Differently
@COLOR 27
@CLS
@ECHO:                                                ___________
@ECHO:                                               ^/           ^\
@ECHO:                                               ^|   THINK   ^|
@ECHO:                                               ^| ^> ^> ^< ^> ^> ^|
@ECHO:                                               ^|DIFFERENTLY^|
@ECHO:                                               ^\___________^/
@ECHO.
@ECHO.
@ECHO:Please report issues at the following URL:
@ECHO: https://github.com/HeyITGuyFixIt/Beta-Batch-Prompt/issues
@TIMEOUT /T 02>nul
@SETLOCAL EnableDelayedExpansion
@GOTO SETTINGS
:SETTINGS
@ECHO OFF
@SET "COLORS=0A"
@SET "ECHOTOGGLE=TRUE"
@SET "CDDIR=%USERPROFILE%"
@GOTO START
:START
@ECHO OFF
@SETLOCAL EnableDelayedExpansion
@TITLE ^>^>^<^>^> Beta Batch Prompt
@CD %CDDIR%
@COLOR %COLORS%
@CLS
@ECHO:Beta Batch Prompt [Version 1.0.0.8]
@ECHO:Copyright (c) 2018 Christian Sirolli
@ENDLOCAL
@IF /I "%ECHOTOGGLE%"=="true" (GOTO CMDON)
@IF /I "%ECHOTOGGLE%"=="false" (GOTO CMDOFF)
:CMDOFF
@ECHO OFF
@CD %CDDIR%
@SET "ECHO=off"
@SET "CMD="
@SET /P CMD=""
@SETLOCAL EnableDelayedExpansion
@IF /I "%CMD%"=="" (GOTO CMDOFF)
@IF /I "%CMD%"=="@ECHO OFF" (SET "ECHOTOGGLE=false" && GOTO CMDOFF)
@IF /I "%CMD%"=="ECHO OFF" (SET "ECHOTOGGLE=false" && GOTO CMDOFF)
@IF /I "%CMD%"=="@ECHO ON" (SET "ECHOTOGGLE=true" && GOTO CMDON)
@IF /I "%CMD%"=="ECHO ON" (SET "ECHOTOGGLE=true" && GOTO CMDON)
@IF /I "%CMD%"=="exit" (GOTO EXIT)
@IF /I "%CMD%"=="echo" (ECHO:ECHO is %ECHO%. && GOTO CONTINUEOFF)
@IF /I "%CMD%"=="debug" (CD "%LOCATION%" && CALL "%LOCATION%/debug.bat" && EXIT)
@echo "%CMD%"|findstr /I /R /C:"\<ECHO\ ON\ " >nul 2>&1
@if not errorlevel 1 (
	@SET "ECHOTOGGLE=true"
	CALL %CMD%
	ECHO OFF
	GOTO CONTINUEON
) else (
	@echo "%CMD%"|findstr /I /R /C:"\<ECHO\ OFF\ " >nul 2>&1
	@if not errorlevel 1 (
		@SET "ECHOTOGGLE=false"
		CALL %CMD%
		ECHO OFF
		GOTO CONTINUEOFF
	) else (
		@echo "%CMD%"|findstr /I /R /C:"\ ECHO\ ON\>" >nul 2>&1
		@if not errorlevel 1 (
			@SET "ECHOTOGGLE=true"
			CALL %CMD%
			ECHO OFF
			GOTO CONTINUEON
		) else (
			@echo "%CMD%"|findstr /I /R /C:"\ ECHO\ OFF\>" >nul 2>&1
			@if not errorlevel 1 (
				@SET "ECHOTOGGLE=false"
				CALL %CMD%
				ECHO OFF
				GOTO CONTINUEOFF
			) else (
				@echo "%CMD%"|findstr /I /R /C:"/?" >nul 2>&1
				@if not errorlevel 1 (
					%CMD%
					) else (
						@echo "%CMD%"|findstr /I /R /C:"-?" >nul 2>&1
						@if not errorlevel 1 (
							%CMD%
						) else (
							ENDLOCAL
							CALL %CMD%
					))))))
:CONTINUEOFF
@SET "CDDIR=%CD%"
@GOTO CMDOFF
:CMDON
@ECHO OFF
@CD %CDDIR%
@SET "ECHO=on"
@ECHO.
@SET "CMD="
@SET /P "CMD=%CDDIR%>"
@SETLOCAL EnableDelayedExpansion
@IF /I "%CMD%"=="" (GOTO CMDON)
@IF /I "%CMD%"=="@ECHO OFF" (SET "ECHOTOGGLE=false" && GOTO CMDOFF)
@IF /I "%CMD%"=="ECHO OFF" (SET "ECHOTOGGLE=false" && GOTO CMDOFF)
@IF /I "%CMD%"=="@ECHO ON" (SET "ECHOTOGGLE=true" && GOTO CMDON)
@IF /I "%CMD%"=="ECHO ON" (SET "ECHOTOGGLE=true" && GOTO CMDON)
@IF /I "%CMD%"=="exit" (GOTO EXIT)
@IF /I "%CMD%"=="echo" (ECHO:ECHO is %ECHO%. && GOTO CONTINUEON)
@IF /I "%CMD%"=="debug" (CD "%LOCATION%" && CALL "%LOCATION%/debug.bat" && EXIT)
@echo "%CMD%"|findstr /I /R /C:"\<ECHO\ ON\ " >nul 2>&1
@if not errorlevel 1 (
	@SET "ECHOTOGGLE=true"
	CALL %CMD%
	ECHO OFF
	GOTO CONTINUEON
) else (
	@echo "%CMD%"|findstr /I /R /C:"\<ECHO\ OFF\ " >nul 2>&1
	@if not errorlevel 1 (
		@SET "ECHOTOGGLE=false"
		CALL %CMD%
		ECHO OFF
		GOTO CONTINUEOFF
	) else (
		@echo "%CMD%"|findstr /I /R /C:"\ ECHO\ ON\>" >nul 2>&1
		@if not errorlevel 1 (
			@SET "ECHOTOGGLE=true"
			CALL %CMD%
			ECHO OFF
			GOTO CONTINUEON
		) else (
			@echo "%CMD%"|findstr /I /R /C:"\ ECHO\ OFF\>" >nul 2>&1
			@if not errorlevel 1 (
				@SET "ECHOTOGGLE=false"
				CALL %CMD%
				ECHO OFF
				GOTO CONTINUEOFF
			) else (
				@echo "%CMD%"|findstr /I /R /C:"/?" >nul 2>&1
				@if not errorlevel 1 (
					%CMD%
					) else (
						@echo "%CMD%"|findstr /I /R /C:"-?" >nul 2>&1
						@if not errorlevel 1 (
							%CMD%
						) else (
							ENDLOCAL
							CALL %CMD%
					))))))
:CONTINUEON
@SET "CDDIR=%CD%"
@GOTO CMDON
:EXIT
@CD %LOCATION%
@ECHO OFF
@CSCRIPT //nologo "%~f0?.wsf" %*
@EXIT /B
-->
<job><script language="VBScript">
  msgbox "Thanks for using Beta Batch Prompt.", vbInformation+VbMsgBoxSETForeground, "Exiting Beta Batch Prompt - Good Bye and God Bless!"
</script></job>
