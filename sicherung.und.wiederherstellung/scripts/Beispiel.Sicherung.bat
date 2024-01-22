@ECHO OFF
REM ------------------------------------------------------------------------------
REM Bitte überprüfen Sie diese Parameter und passen SIe sie an Ihre Bedürfnisse an
REM ------------------------------------------------------------------------------
set mysync=C:\oracle\bin\rclone
set Quelle=C:\Users\Heinz\Desktop\Beispiel.vhs
set Sicherung=D:\Beispiel.vhs
set taeglich=3                                   && REM 0 bedeutet keine zusätzliche tägliche Sicherung, 1,2,3.. zuätzliche tägliche Sicherung für 1,2,3.. Tage
set monatlich=3                                  && REM 0 bedeutet keine zusätzliche monatliche Sicherung, 1,2,3.. zuätzliche monatliche Sicherung für 1,2,3.. Monate
set jaehrlich=3                                  && REM 0 bedeutet keine zusätzliche jährliche Sicherung, 1,2,3.. zuätzliche jährliche Sicherung für 1,2,3.. Jahre
REM ------------------------------------------------------------------------------
REM Nachfolgende Parameter können Sie so belassen (bitte nicht ändern)
REM ------------------------------------------------------------------------------
set SicherungBase=%Sicherung%\base
set mysyncparam=--progress --create-empty-src-dirs --log-level NOTICE --checksum --transfers=8 --fast-list
set mydate=%DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%
set do-monat=%mydate:~8,2%
set do-jahr=%mydate:~5,2%
IF %do-monat% EQU 01 (GOTO monat-A-TRUE) ELSE (GOTO monat-A-FALSE)
:monat-A-TRUE
    IF %do-jahr% EQU 01 (GOTO jahr-A-TRUE) ELSE (GOTO jahr-A-FALSE)
    :jahr-A-TRUE
        GOTO monat-A-FALSE
    :jahr-A-FALSE
        SET do-jahr=99
:monat-A-FALSE
IF %do-monat% NEQ 01 (SET do-jahr=99)
REM ------------------------------------------------------------------------------
REM erzeuge ggf. notwendige Verzeichnisse
REM ------------------------------------------------------------------------------
IF EXIST "%Sicherung%" (echo "%Sicherung% existiert") ELSE (mkdir "%Sicherung%" && echo "%Sicherung% erfolgreich erzeugt")
IF EXIST "%SicherungBase%" (echo "%SicherungBase% existiert") ELSE (mkdir "%SicherungBase%" && echo "%SicherungBase% erfolgreich erzeugt")
IF %taeglich% GTR 0 (
    IF EXIST "%Sicherung%\taeglich" (echo "%Sicherung%\taeglich existiert") ELSE (mkdir "%Sicherung%\taeglich" && echo "%Sicherung%\taeglich erfolgreich erzeugt")
)
IF %monatlich% GTR 0 (
    IF EXIST "%Sicherung%\monatlich" (echo "%Sicherung%\monatlich existiert") ELSE (mkdir "%Sicherung%\monatlich" && echo "%Sicherung%\monatlich erfolgreich erzeugt")
)
IF %jaehrlich% GTR 0 (
    IF EXIST "%Sicherung%\jaehrlich" (echo "%Sicherung%\jaehrlich existiert") ELSE (mkdir "%Sicherung%\jaehrlich" && echo "%Sicherung%\jaehrlich erfolgreich erzeugt")
)
REM ------------------------------------------------------------------------------
REM Backup
REM ------------------------------------------------------------------------------
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Starte Backup von Quelle: %Quelle% nach Ziel: %SicherungBase%"
%mysync% sync "%Quelle%" "%SicherungBase%" %mysyncparam%
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Backup erfolgreich abgeschlossen"
echo "--------------------------------------------------------------------------"
echo " "
echo " "

REM ------------------------------------------------------------------------------
REM zusätzliche tägliche Sicherung
REM ------------------------------------------------------------------------------
IF %taeglich% GTR 0 (GOTO taeglich-A-TRUE) ELSE (GOTO taeglich-A-FALSE)
:taeglich-A-TRUE
    echo "Starte taeglichen Backup"
    echo "--------------------------------------------------------------------------"
    REM ------------------------------------------------------------------------------
    REM Starte Backup
    REM ------------------------------------------------------------------------------
    IF EXIST "%Sicherung%\taeglich\Tag-%mydate%" (echo "%Sicherung%\taeglich\Tag-%mydate%" existiert) ELSE (mkdir "%Sicherung%\taeglich\Tag-%mydate%" && echo "%Sicherung%\taeglich\Tag-%mydate% erfolgreich erzeugt")
    echo "-------------------------------------------------------------------------------------------------------------------"
    echo "Starte Backup von Quelle: %SicherungBase% nach Ziel: %Sicherung%\taeglich\Tag-%mydate%"
    %mysync% sync "%SicherungBase%" "%Sicherung%\taeglich\Tag-%mydate%" %mysyncparam%
    echo "-------------------------------------------------------------------------------------------------------------------"
    REM erste Löschung
        set MENGE=0
        dir /a:d "%Sicherung%\taeglich" | find /c "Tag-" > %temp%\MENGE && set /P MENGE=<"%temp%\MENGE"
        IF %MENGE% GTR %taeglich% (GOTO taeglich-AAA-TRUE) ELSE (GOTO taeglich-AAA-FALSE)
        :taeglich-AAA-TRUE
        set firstdir=asdfghjklqwertzuiop
        dir /B/AD/ON "%Sicherung%\taeglich" | find "Tag-" > %temp%\VERZEICHNIS 
        for /L %%j in (1,1,1) do @for /F "tokens=1* delims=:" %%a in ('findstr /n /r "^" %temp%\VERZEICHNIS ^| findstr /r "^%%j:"') do @set firstdir=%%b
        rmdir "%Sicherung%\taeglich\%firstdir%" /s /q
        echo "Verzeichnis %Sicherung%\taeglich\%firstdir% geloescht"
        :taeglich-AAA-FALSE
    REM zweite Löschung
        set MENGE=0
        dir /a:d "%Sicherung%\taeglich" | find /c "Tag-" > %temp%\MENGE && set /P MENGE=<"%temp%\MENGE"
        IF %MENGE% GTR %taeglich% (GOTO taeglich-BBB-TRUE) ELSE (GOTO taeglich-BBB-FALSE)
        :taeglich-BBB-TRUE
        set firstdir=asdfghjklqwertzuiop
        dir /B/AD/ON "%Sicherung%\taeglich" | find "Tag-" > %temp%\VERZEICHNIS 
        for /L %%j in (1,1,1) do @for /F "tokens=1* delims=:" %%a in ('findstr /n /r "^" %temp%\VERZEICHNIS ^| findstr /r "^%%j:"') do @set firstdir=%%b
        rmdir "%Sicherung%\taeglich\%firstdir%" /s /q
        echo "Verzeichnis %Sicherung%\taeglich\%firstdir% geloescht"
        :taeglich-BBB-FALSE
:taeglich-A-FALSE


REM ------------------------------------------------------------------------------
REM zusätzliche monatliche Sicherung
REM ------------------------------------------------------------------------------
IF %monatlich% GTR 0 (GOTO monatlich-A-TRUE) ELSE (GOTO monatlich-A-FALSE)
:monatlich-A-TRUE
IF %do-monat% EQU 01 (GOTO monatlich-AA-TRUE) ELSE (GOTO monatlich-AA-FALSE)
    :monatlich-AA-TRUE
    echo "Starte monatlichen Backup"
    echo "--------------------------------------------------------------------------"
    IF EXIST "%Sicherung%\monatlich\Monat-%mydate%" (echo "%Sicherung%\monatlich\Monat-%mydate%" existiert) ELSE (mkdir "%Sicherung%\monatlich\Monat-%mydate%" && echo "%Sicherung%\monatlich\Monat-%mydate% erfolgreich erzeugt")
    echo "-------------------------------------------------------------------------------------------------------------------"
    echo "Starte Backup von Quelle: %SicherungBase% nach Ziel: %Sicherung%\monatlich\Monat-%mydate%"
    %mysync% sync "%SicherungBase%" "%Sicherung%\monatlich\Monat-%mydate%" %mysyncparam%
    echo "-------------------------------------------------------------------------------------------------------------------"
    echo "Backup erfolgreich abgeschlossen"
    :monatlich-AA-FALSE
:monatlich-A-FALSE
    REM erste Löschung
        set MENGE=0
        dir /a:d "%Sicherung%\monatlich" | find /c "Monat-" > %temp%\MENGE && set /P MENGE=<"%temp%\MENGE"
        IF %MENGE% GTR %monatlich% (GOTO monatlich-AAA-TRUE) ELSE (GOTO monatlich-AAA-FALSE)
        :monatlich-AAA-TRUE
        set firstdir=asdfghjklqwertzuiop
        dir /B/AD/ON "%Sicherung%\monatlich" | find "Monat-" > %temp%\VERZEICHNIS 
        for /L %%j in (1,1,1) do @for /F "tokens=1* delims=:" %%a in ('findstr /n /r "^" %temp%\VERZEICHNIS ^| findstr /r "^%%j:"') do @set firstdir=%%b
        rmdir "%Sicherung%\monatlich\%firstdir%" /s /q
        echo "Verzeichnis %Sicherung%\monatlich\%firstdir% geloescht"
        :monatlich-AAA-FALSE
    REM zweite Löschung
        set MENGE=0
        dir /a:d "%Sicherung%\monatlich" | find /c "Monat-" > %temp%\MENGE && set /P MENGE=<"%temp%\MENGE"
        IF %MENGE% GTR %monatlich% (GOTO monatlich-BBB-TRUE) ELSE (GOTO monatlich-BBB-FALSE)
        :monatlich-BBB-TRUE
        set firstdir=asdfghjklqwertzuiop
        dir /B/AD/ON "%Sicherung%\monatlich" | find "Monat-" > %temp%\VERZEICHNIS 
        for /L %%j in (1,1,1) do @for /F "tokens=1* delims=:" %%a in ('findstr /n /r "^" %temp%\VERZEICHNIS ^| findstr /r "^%%j:"') do @set firstdir=%%b
        rmdir "%Sicherung%\monatlich\%firstdir%" /s /q
        echo "Verzeichnis %Sicherung%\monatlich\%firstdir% geloescht"
        :monatlich-BBB-FALSE


REM ------------------------------------------------------------------------------
REM zusätzliche jaehrliche Sicherung
REM ------------------------------------------------------------------------------
IF %jaehrlich% GTR 0 (GOTO jaehrlich-A-TRUE) ELSE (GOTO jaehrlich-A-FALSE)
:jaehrlich-A-TRUE
 IF %do-jahr% EQU 01 (GOTO jaehrlich-AA-TRUE) ELSE (GOTO jaehrlich-AA-FALSE)
   :jaehrlich-AA-TRUE
   IF EXIST "%Sicherung%\jaehrlich\Jahr-%mydate%" (echo "%Sicherung%\jaehrlich\Jahr-%mydate%" existiert) ELSE (mkdir "%Sicherung%\jaehrlich\Jahr-%mydate%" && echo "%Sicherung%\jaehrlich\Jahr-%mydate% erfolgreich erzeugt")
    echo "-------------------------------------------------------------------------------------------------------------------"
    echo "Starte Backup von Quelle: %SicherungBase% nach Ziel: %Sicherung%\jaehrlich\Jahr-%mydate%"
    %mysync% sync "%SicherungBase%" "%Sicherung%\jaehrlich\Jahr-%mydate%" %mysyncparam%
    echo "-------------------------------------------------------------------------------------------------------------------"
    echo "Backup erfolgreich abgeschlossen"
   :jaehrlich-AA-FALSE
:jaehrlich-A-FALSE
    REM erste Löschung
        set MENGE=0
        dir /a:d "%Sicherung%\jaehrlich" | find /c "Jahr-" > %temp%\MENGE && set /P MENGE=<"%temp%\MENGE"
        IF %MENGE% GTR %jaehrlich% (GOTO jaehrlich-AAA-TRUE) ELSE (GOTO jaehrlich-AAA-FALSE)
        :jaehrlich-AAA-TRUE
        set firstdir=asdfghjklqwertzuiop
        dir /B/AD/ON "%Sicherung%\jaehrlich" | find "Jahr-" > %temp%\VERZEICHNIS 
        for /L %%j in (1,1,1) do @for /F "tokens=1* delims=:" %%a in ('findstr /n /r "^" %temp%\VERZEICHNIS ^| findstr /r "^%%j:"') do @set firstdir=%%b
        rmdir "%Sicherung%\jaehrlich\%firstdir%" /s /q
        echo "Verzeichnis %Sicherung%\jaehrlich\%firstdir% geloescht"
        :jaehrlich-AAA-FALSE
    REM zweite Löschung
        set MENGE=0
        dir /a:d "%Sicherung%\jaehrlich" | find /c "Jahr-" > %temp%\MENGE && set /P MENGE=<"%temp%\MENGE"
        IF %MENGE% GTR %jaehrlich% (GOTO jaehrlich-BBB-TRUE) ELSE (GOTO jaehrlich-BBB-FALSE)
        :jaehrlich-BBB-TRUE
        set firstdir=asdfghjklqwertzuiop
        dir /B/AD/ON "%Sicherung%\jaehrlich" | find "Jahr-" > %temp%\VERZEICHNIS 
        for /L %%j in (1,1,1) do @for /F "tokens=1* delims=:" %%a in ('findstr /n /r "^" %temp%\VERZEICHNIS ^| findstr /r "^%%j:"') do @set firstdir=%%b
        rmdir "%Sicherung%\jaehrlich\%firstdir%" /s /q
        echo "Verzeichnis %Sicherung%\jaehrlich\%firstdir% geloescht"
        :jaehrlich-BBB-FALSE

REM ------------------------------------------------------------------------------
REM Sicherung abgeschlossen
REM ------------------------------------------------------------------------------

SET /P _inputnameC= Druecke eine beliebige Taste um das Fenster zu schliessen

@ECHO ON
