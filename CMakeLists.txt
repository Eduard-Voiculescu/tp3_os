cmake_minimum_required(VERSION 3.9)
project(tp3_os)

set(CMAKE_CXX_STANDARD 11)

add_executable(tp3_os
        src/common.c
        src/common.h
        src/conf.h
        src/pm.c
        src/pm.h
        src/pt.c
        src/pt.h
        src/tlb.c
        src/tlb.h
        src/vmm.c
        src/vmm.h
        tests/BACKING_STORE.txt
        tests/command.in
        GNUmakefile
        rapport.pdf
        rapport.tex
        tp3.pdf
        tp3.tex)
