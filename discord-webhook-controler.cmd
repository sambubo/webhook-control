@echo off
title WbControl [ Paradox ]
cls
color 9
set /p webhook=[+] Webhook URL : 
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Paradox has been executed! :ringed_planet: \"}" %webhook% >nul
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```ADDED: Discord Webhook Controller (Paradox) ```\"}" %webhook% >nul
:menu
echo [+] Options - WbControl
echo 1 - Message
echo 2 - Spam
set /p choice=[+] Choice : 
if %choice%== 1 goto 1
if %choice%== 2 goto 2
:1
cls
echo [+] Message - WbControl (WITHOUT RU-LANGUAGE, WITHOUT SPACES)
set /p message=[+] Message : 
echo [+] 0 - Exit
if %message%== 0 goto menu
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \" %message% \"}" %webhook% >nul
goto 1
:2
cls
echo [+] Message - WbControl (WITHOUT RU-LANGUAGE, WITHOUT SPACES)
set /p messagespam=[+] Message : 
echo [+] 0 - Exit
if %messagespam%== 0 goto menu
:spam2
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \" %messagespam% \"}" %webhook% >nul
goto spam2
