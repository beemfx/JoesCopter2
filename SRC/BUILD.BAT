@echo off
rem This builder is for a setup where DOSBox has mounted a folder to C and there
rem is a folder containing the release of QBasic4.5 at C:\QB45 and the source
rem code is located on the root.

echo Builder...

path=C:\QB45

set QB_LINK_FILES=JOES.OBJ JOJO.OBJ
set QB_EXE_NAME=JOES2

bc /o /t JOES.BAS JOES.OBJ ;
bc /o /t JOJO.BAS JOJO.OBJ ;

link /nod %QB_LINK_FILES%, %QB_EXE_NAME%.EXE, %QB_EXE_NAME%.MAP, C:\QB45\LIB\BCOM45.LIB

echo Build complete.

pause
