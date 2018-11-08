#!/usr/bin/python
import requests
from bs4 import BeautifulSoup
import re 

url = "https://index.hu/"
resp = requests.get(url)
soup = BeautifulSoup(resp.content, 'html.parser')

# print(soup.prettify())

titles = []
for title in soup.find_all('h1', {'class' : 'cikkcim'}):
  cleantext = title.text.strip()
  titles.append(cleantext)
for item in titles:
  print item

# webpage = urllib2.urlopen(url)
# page_source = webpage.read()





## Scraping manually

# - Choose 2 different Hungarian news sites you would like to scrape, check their DOM structure and identify the element(s) that contain a news article
# - Write crawlers that can read news articles from these websites and print out the article's text

# You will see that defining the beginning and the end of the article is pretty easy for a human reader, but it isn't self evident for a script:
# - It's hard to tell what belongs to the article and what doesn't (recommended articles, related stories, user comments, etc.)
# - It's hard to tell what is an ad and what is the actual article
# - Sometimes ads or legal notices appear first instead of the article, sometimes there are redirects, etc.

