@echo off


:: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512


:::::::::::::::::::::::::::::::::::::::


:START
echo.
echo test test test
echo.
echo.
echo HASHING FILE VERIFIER
echo.
echo.


echo [0] - MD2 
echo [1] - MD4 
echo [2] - MD5 
echo [3] - SHA1 
echo [4] - SHA256 
echo [5] - SHA384 
echo [6] - SHA512 
echo.
echo.
set /p input="pick your hash algorithm: "


if %input%==0 set var=MD2
if %input%==1 set var=MD4
if %input%==2 set var=MD5
if %input%==3 set var=SHA1
if %input%==4 set var=SHA256
if %input%==5 set var=SHA384
if %input%==6 set var=SHA512




:: if %input%==%input% set %input%="%%c"


goto :file2hash location

pause

:::::::::::::::::::::::::::::::::::::::
:file2hash location
echo.
echo.
echo location of file to hash 
echo.
echo.
set /p input="drag file2hash here for pathway: "
if %input%==input goto :hash_exe



:::::::::::::::::::::::::::::::::::::::
:hash_exe
echo.
echo.
certutil -hashfile %input% %var%
pause

goto :START






:::::::::::::::::::::::::::::::::::::::
::88