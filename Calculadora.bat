@ECHO OFF
title Calculadora

:inicio

set /p op= Que operacion desea realizar (sumar o restar)?
if %op%==sumar (goto sumar)
if %op%==restar (goto restar)

:sumar
set /p nom= Inserte un numero:
set /p num= Inserte otro numero:
set /a resul= %nom% + %num%

echo %resul%

set /p otro= Quiere realizar otra operacion?
if %otro%== si (goto inicio)
if %otro%== no (goto final)

:restar
set /p nom= Inserte un numero:
set /p num= Inserte otro numero:
set /a resul= %nom% - %num%

echo %resul%

set /p otro= Quiere realizar otra operacion?
if %otro%== si (goto inicio)
if %otro%== no (goto final)

:final

exit