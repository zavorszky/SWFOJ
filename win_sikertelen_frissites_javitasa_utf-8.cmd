chcp 65001
echo off
set z9_cim=A trustedinstaller beállításának módosítása
set z9_log=e:\felhasznalok\dady\sajat_projektek\SWFOJA\win_sikertelen_frissites_javitasa.utf8.log

cls
echo %z9_cim%.

if not exist %z9_log% (
echo ** %z9_cim% > %z9_log%
echo ********************** >> %z9_log%
)

echo. >> %z9_log%
date /t >> %z9_log%
time /t >> %z9_log%

echo ** >> %z9_log%
echo ** Módosítás előtt >> %z9_log%
sc qc trustedinstaller >> %z9_log%

echo ** >> %z9_log%
echo ** Módosítás  >> %z9_log%
echo SC parancs tesztel‚s alatt...
rem -- SC config trustedinstaller start=auto

echo ** >> %z9_log%
echo ** Módosítás után >> %z9_log%
sc qc trustedinstaller >> %z9_log%

echo ** >> %z9_log%
echo **** Kész >> %z9_log%
pause
