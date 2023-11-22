echo off
REM /Wall warns on all
REM /Za C89
REM /Oy omit frame pointer

cl /Wall /Za /Fetest.exe /FAs /Oy ctest.c runtime.c
