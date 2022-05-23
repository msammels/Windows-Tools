::
::  Extensions.bat
::  Used for deleting files with a certain extension
::
::  Copyright © 2014 Michael Sammels. All rights reserved.
::

@echo off
cls

set found = 0
echo enter the file extension you want to delete:
set /p ext = "> "

if exist *.%ext% (           &:: Check if there are any in the current folder
    del *.%ext%
    set found = 1
)

for /d /r %%g in ("*") do (  &:: Iterate through all subfolders
    if exist %%g cd %%g
        if exist *.%ext% (
            del *.%ext%
            set found = 1
        )
)

if %found% == 1 (
    echo.
    echo Delete all .%ext% files
    echo.
) else (
    echo.
    echo There were no .%ext% files
    echo Nothing has been deleted
	echo.
)

pause
exit
