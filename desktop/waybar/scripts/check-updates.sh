#!/bin/bash

UPD=$(checkupdates | wc -l)

[[ $UPD = 0 ]] || echo $UPD
