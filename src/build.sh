#!/bin/bash

clang -fomit-frame-pointer -S ctest.c
clang -Wall ctest.c runtime.c -o test

