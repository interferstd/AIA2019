@echo off
set /p str=Enter mask:

set /p check=Shure?(y/n)

if %check% == y @ 2>nul (@for /f "delims=" %%j in ('dir/a-d/b/s "%str%"') do @rm "%%j")
