# Parsing JSON

# - Find a JSON weather API and get the weather forecast on Budapest
# - Create a basic weather widget and push it to GIT
# - Question: Explain the differences between XML and JSON 

import requests
import dotenv 
import os 
from dotenv import load_dotenv
from os.path import join, dirname
import json
import pandas as pd

dotenv_path = join(dirname(__file__), '.env')
load_dotenv(dotenv_path)

app_id = os.getenv('APP_ID')
city = raw_input('City Name: ')
temp_unit = 'units=metric'
template = 'https://api.openweathermap.org/data/2.5/forecast?'

url = template + 'appid=' + app_id + '&q=' + city + '&' + temp_unit

json_data = requests.get(url).json()
overall = json_data['list'][0]['weather'][0]['main']
weather_list = json_data['list']
date = weather_list[0]['dt_txt']

forecast = []
for item in weather_list:
  weather = {}
  weather['date'] = item['dt_txt']
  weather['main'] = item['weather'][0]['main']
  weather['temp'] = item['main']['temp']
  forecast.append(weather)

for item in forecast:
  print('Date/Time: ' + item['date'] + ', Forecast for ' + city + ': ' + item['main'] + ', ' + str(item['temp']) + 'C')
