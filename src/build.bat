echo off
REM /Wall warns on all
REM /Za C89
REM /Oy omit frame pointer
ml64 /c ctest-ed.asm
cl /Wall /Za /Fetest.exe /FAs /Oy ctest-ed.obj runtime.c

