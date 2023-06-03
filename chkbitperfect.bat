@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST ghbuilt.bin ( fc /b ghbuilt.bin ghoriginal.bin
) ELSE echo ghbuilt.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST gh.lst del gh.lst
IF EXIST ghbuilt.bin del ghbuilt.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
