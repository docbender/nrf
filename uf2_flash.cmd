 @ECHO OFF
SETLOCAL
SET target=e:\
set arg1=%1

echo UF2 flashing to %target% ...

IF EXIST %target% (
    ECHO Target found
) ELSE (
    ECHO Error: Target drive %target% was not found
    exit /B
)

ECHO Copying file %arg1%\build\zephyr\zephyr.uf2...
copy "%arg1%\build\zephyr\zephyr.uf2" %target%

echo UF2 flash finished