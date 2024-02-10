 @ECHO OFF
SETLOCAL
SET target=e:\

echo UF2 flashing to %target% ...

IF EXIST %target% (
    ECHO Target found
) ELSE (
    ECHO Error: Target drive %target% was not found
    exit /B
)

copy "build\zephyr\zephyr.uf2" %target%

echo UF2 flash finished