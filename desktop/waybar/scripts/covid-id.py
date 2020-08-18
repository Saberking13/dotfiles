#!/bin/env python3

import requests

id = requests.get('https://covid19.mathdro.id/api/countries/ID').json()
confirmed_id = id["confirmed"]

print(confirmed_id["value"])

