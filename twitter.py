# Connect to Twitter JSON API

# - Register to get developer authentication to use the Twitter API
# - Write code in Python that searches for certain #hashtags on Twitter using an existing library

import tweepy
from tweepy import OAuthHandler
import pandas as pd 
import dotenv

consumer_key = process.env.CONSUMER_KEY
consumer_secret = process.env.CONSUMER_SECRET
access_token = process.env.ACCESS_TOKEN
access_secret = process.env.ACCESS_SECRET

auth = OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_secret)

api = tweepy.API(auth)

PGHhashtag = tweepy.Cursor(api.search, q='PittsburghStrong').items(20)

data = pd.DataFrame(data=[tweet.text for tweet in PGHhashtag], columns=['#PittsburghStrong Tweets'])
print(data.head(15))
