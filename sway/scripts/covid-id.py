#!/bin/env python3

import requests

data = requests.get('https://covid19.mathdro.id/api/countries/ID').json()
confirmed_raw = data["confirmed"]
confirmed = str(confirmed_raw["value"])

f = open("/home/lemniskett/.cache/covid-id", "w")
f.write(confirmed)
f.close()
