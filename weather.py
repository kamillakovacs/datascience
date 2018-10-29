# Parsing JSON

# - Find a JSON weather API and get the weather forecast on Budapest
# - Create a basic weather widget and push it to GIT
# - Question: Explain the differences between XML and JSON 

import requests

template = 'https://api.openweathermap.org/data/2.5/weather?appid=1276fab0a23e83a13f3e9eb58116f6a0&q='
city = input("City Name:")

url = template + city

json_data = requests.get(url).json()

print(json_data)
