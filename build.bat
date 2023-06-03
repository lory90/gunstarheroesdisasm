@echo off

asm68k /k /p /o ae- gh.asm, ghbuilt.bin >errors.txt, , gh.lst
fixheadr.exe ghbuilt.bin