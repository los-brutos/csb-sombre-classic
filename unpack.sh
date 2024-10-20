#!/usr/bin/env bash

#
# dépaquetage des compendiums du module CSB Sombre classic
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
    echo 'Usage: ./unpack.sh
unpack les compendiums du module CSB Sombre classic'
    exit
fi

workdirectory="$(pwd)"

echo "* ********************************** *"
echo "* start unpack compendiums           *"
echo "* ********************************** *"

echo "  * configure environment"
fvtt package workon csb-sombre-classic --type=Module

echo "  * unpack compendium templates-actors"
fvtt package unpack -c templates-actors

echo "  * unpack compendium templates-items"
fvtt package unpack -c templates-items

echo "  * unpack compendium personnalites"
fvtt package unpack -c personnalites

echo "* ********************************** *"
echo "* all compendiums have been unpacked *"
echo "* ********************************** *"
echo

cd ${workdirectory-}
