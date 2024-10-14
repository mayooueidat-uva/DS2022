#!/usr/bin/python3

import os
import json
import requests

GHUSER = os.getenv('GITHUB_USER')

url = 'https://api.github.com/users/{0}/events'.format(GHUSER)

print("GitHub User: " + GHUSER)
 
print("URL to events data: " + url)

r = json.loads(requests.get(url).text)

print(GHUSER + " has performed these actions recently:")

for x in r[:5]:
  event = x['type'] + ' :: ' + x['repo']['name']
  print(event)
