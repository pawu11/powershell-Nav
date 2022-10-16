# powershell-Nav

### Navigation mit Powershell by pawu ###
Version 1.00

Powershell muss als Administrator gestartet werden!

A)
Beim Versuch, ein PowerShell-Skript zu starten, heißt es: 
"Die Datei kann nicht geladen werden, da die Ausführung von Skripts auf diesem System deaktiviert ist". 

Anzeigen des aktuellen Status von Powershell (Standard=Restricted):
 Get-ExecutionPolicy

Erlaube nicht registriert und signierte Skript ausführen:
 Set-ExecutionPolicy RemoteSigned
 
Konfig zurücksetzen:
 Get-ExecutionPolicy Default
