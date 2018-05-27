echo off
chcp 852
set z9_cim=A trustedinstaller be ll¡t s nak m¢dos¡t sa
set z9_log=e:\felhasznalok\dady\sajat_projektek\SWFOJA\win_sikertelen_frissites_javitasa.oem852.log
set z9_jovahagyas_keres=J¢v hagy s k‚r‚s
set z9_jovahagyas_igen=J¢v hagy s megadva
set z9_jovahagyas_nem=J¢v hagy s megtagadva

cls
echo %z9_cim%.

if not exist %z9_log% (
echo ** %z9_cim%. >> %z9_log%
echo ************************ >> %z9_log%
)

echo. >> %z9_log%
date /t >> %z9_log%
time /t >> %z9_log%

echo ** >> %z9_log%
echo ** M¢dos¡t s el‹tt >> %z9_log%
sc qc trustedinstaller >> %z9_log%
sc qc trustedinstaller


echo ** >> %z9_log%
echo %z9_jovahagyas_keres%  >> %z9_log%
echo %z9_jovahagyas_keres%
choice /m "Mehet a START tulajdons g AUTO-ra  ll¡t sa "

if errorlevel 2 (
echo %z9_jovahagyas_nem%. >> %z9_log%
echo %z9_jovahagyas_nem%.
goto label_kesz
)

if errorlevel 1 (
echo %z9_jovahagyas_igen%. >> %z9_log%
echo %z9_jovahagyas_igen%.
echo SC parancs tesztel‚s alatt...
rem -- SC config trustedinstaller start=auto
echo ** >> %z9_log%
echo ** M¢dos¡t s ut n >> %z9_log%
sc qc trustedinstaller >> %z9_log%
sc qc trustedinstaller
goto label_kesz
)

if errorlevel 0 (
echo %z9_jovahagyas_nem%, Ctrl-C. >> %z9_log%
echo %z9_jovahagyas_nem%, Ctrl-C.
goto label_kesz
)

:label_kesz
echo ** >> %z9_log%
echo **** K‚sz >> %z9_log%
pause
