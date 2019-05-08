@echo off

:main
	title I just did...
setlocal EnableDelayedExpansion 

	echo I just did:
	set UserInput=
	set /p UserInput=
	
	if "%UserInput%"=="" (
		goto :main
	)
	
	set FormatedTime=%TIME:~0,8%
	if "%FormatedTime:~0,1%"==" " (
		set FormatedTime=0%FormatedTime:~1,7%
	)	
	
	set targeFileIWantToNAme=%DATE:~0,2%.%DATE:~3,2%.%DATE:~8,2%_Idid.txt

	echo @[%FormatedTime%]: %UserInput%>>%targeFileIWantToNAme%

	goto :main

:end-main