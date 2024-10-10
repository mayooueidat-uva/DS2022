#!/usr/bin/python3

import json 
import requests
import logging 

url = "https://official-joke-api.appspot.com/random_joke"

response = requests.get(url)  
response = json.loads(response.text) # this will allow python to see the text as json. 

id = response["id"] 
setup = response["setup"]
punchline = response["punchline"]

print(id, setup, punchline) 

# note: an api is called 'application protocol interface.' 
# it is how machines talk to machines. it is a manner in which they communicate. 
# a machine must communicate with a machine...

logger = logging.getLogger(__name__)  # the two underscores create a special class of an object. 
logging.basicConfig(filename="joke.log", encoding="utf-8", level=logging.DEBUG) 
logging.warning("%s:%s:%s", id, setup, punchline) 
