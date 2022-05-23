:: 
:: ResetFileExplorer.bat
:: This resets all folders to default views
:: It alos takes cares window sizes - any custom sizes will be lost
::
:: Copyright © 2016 Michael Sammels. All rights reserved.
::

@echo off

reg delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /f

reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /f
reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /f

reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f

reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f

:: Kill Explorer and restart
taskkill /f /im explorer.exe
start explorer.exe
