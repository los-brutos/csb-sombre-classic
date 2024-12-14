#!/usr/bin/env bash

#
# création des compendiums du module CSB Sombre classic
#
# le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
#
# /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
#

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./pack.sh
génère les compendiums du module CSB Sombre classic'
    exit
fi

workdirectory="$(pwd)"

echo "* ********************************* *"
echo "* start create compendiums          *"
echo "* ********************************* *"

echo "  * configure environment"
fvtt package workon csb-sombre-classic --type=Module

echo "  * create compendium actors"
fvtt package pack templates-actors

echo "  * create compendium templates-items"
fvtt package pack templates-items

echo "  * create compendium personnalites"
fvtt package pack personnalites

echo "  * create compendium traits"
fvtt package pack traits

echo "* ********************************* *"
echo "* all compendiums have been created *"
echo "* ********************************* *"
echo

cd ${workdirectory-}
