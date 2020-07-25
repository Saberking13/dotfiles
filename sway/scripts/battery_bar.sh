#!/bin/bash

value=$(cat /sys/class/power_supply/BAT0/capacity)

[[ value -gt 90 ]] && echo '[=====]' && exit 0
[[ value -gt 80 ]] && echo '[====-]' && exit 0
[[ value -gt 70 ]] && echo '[==== ]' && exit 0
[[ value -gt 60 ]] && echo '[===- ]' && exit 0
[[ value -gt 50 ]] && echo '[===  ]' && exit 0
[[ value -gt 40 ]] && echo '[==-  ]' && exit 0
[[ value -gt 30 ]] && echo '[==   ]' && exit 0
[[ value -gt 20 ]] && echo '[=-   ]' && exit 0
[[ value -gt 10 ]] && echo '[=    ]' && exit 0
[[ value -gt 0  ]] && echo '[-    ]' && exit 0
