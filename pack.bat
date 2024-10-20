@echo off
REM 
REM création des compendiums du module CSB Sombre classic
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************* *
echo * start create compendiums          *
echo * ********************************* *
echo.
echo /// configure environment
call fvtt package workon csb-sombre-classic --type=Module
echo.
echo /// create compendium "templates-actors"
call fvtt package pack templates-actors
echo.
echo /// create compendium "templates-items"
call fvtt package pack templates-items
echo.
echo /// create compendium "personnalites"
call fvtt package pack personnalites
echo.
echo * ********************************* *
echo * all compendiums have been created *
echo * ********************************* *
echo.
@echo on
