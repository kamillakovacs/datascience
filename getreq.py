import requests

url = "http://httpbin.org/get"

r = requests.get(url)

print(r.json())