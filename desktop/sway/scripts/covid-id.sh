#!/bin/bash

country="ID"
confirmed=$(curl -L https://covid19.mathdro.id/api/countries/$country | jq ".confirmed" | jq ".value")

echo $confirmed > ~/.cache/covid
