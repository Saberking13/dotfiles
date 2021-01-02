#!/usr/bin/env bash

PID=$(pidof wofi) && kill $PID || wofi --show drun
