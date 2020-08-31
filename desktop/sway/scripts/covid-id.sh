#!/bin/bash

country="ID"
confirmed=$(curl -L https://covid19.mathdro.id/api/countries/$country | jq ".confirmed" | jq ".value")

[[ -z $confirmed ]] && exit 1

confirmed=$(numfmt --to=si $confirmed)
echo $confirmed > ~/.cache/covid
