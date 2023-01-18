@echo off
:main
echo Nombre de usuario
set /p name=
echo Contraseña:
set /p password=
set /p admin=ADMIN? (Y/N)

if %name%=="" goto main
if %password%=="" goto main
if %admin%==Y goto createuseradmin
if %admin%==N goto create
:create
echo Creando usuario....
NET USER %name% %password% /ADD
echo Tenga buen dia!
pause > nul
exit

:createuseradmin
echo Crear usuario administrativo
NET USER %name% %password% /ADD
NET LOCALGROUP Administradores %name% /ADD
echo Hecho!
pause > nul
exit
