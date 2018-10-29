import requests
from bs4 import BeautifulSoup
import pandas

url = 'http://feeds.washingtonpost.com/rss/politics'

resp = requests.get(url)

soup = BeautifulSoup(resp.content, features="xml")

items = soup.find_all('item')

news_items = []

for item in items:
  news_item = {}
  news_item['title'] = item.title.text
  news_item['url'] = item.link.text
  news_item['date'] = item.pubDate.text
  news_item['creator'] = item.creator.text
  news_item['description'] = item.description.text
  news_items.append(news_item)

df = pandas.DataFrame(news_items, columns=news_item)
print(df.head)




