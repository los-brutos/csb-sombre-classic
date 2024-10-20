@echo off
REM 
REM dépaquetage des compendiums du module CSB Sombre classic
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************** *
echo * start unpack compendiums           *
echo * ********************************** *
echo.
echo /// configure environment
call fvtt package workon csb-sombre-classic --type=Module
echo.
echo /// unpack compendium "templates-actors"
call fvtt package unpack -c templates-actors
echo.
echo /// unpack compendium "templates-items"
call fvtt package unpack -c templates-items
echo.
echo /// unpack compendium "personnalites"
call fvtt package unpack -c personnalites
echo.
echo * ********************************** *
echo * all compendiums have been unpacked *
echo * ********************************** *
echo.
@echo on
