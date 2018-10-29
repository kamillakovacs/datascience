# Connect to Twitter JSON API

# - Register to get developer authentication to use the Twitter API
# - Write code in Python that searches for certain #hashtags on Twitter using an existing library

import tweepy
from tweepy import OAuthHandler
import pandas as pd 

consumer_key = 'hRMZ25REsgzhYdHylQEjeTQld'
consumer_secret = 'AlkVGctfGQZAS4zbFpYTmjFZwrqNZJZxTJPoRwNBp2cZ7dnY1W'
access_token = '68403322-bdDrt2BF7Md0kqQsGbxGZbaFuyCxDvBb1RKQk01JH'
access_secret = 'faj0SzcWq67gn1GCNYMBcKgXG0ya7WiJSECqbXdk3u7Ub'

auth = OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_secret)

api = tweepy.API(auth)

PGHhashtag = tweepy.Cursor(api.search, q='PittsburghStrong').items(20)

data = pd.DataFrame(data=[tweet.text for tweet in PGHhashtag], columns=['#PittsburghStrong Tweets'])
print(data.head(15))
