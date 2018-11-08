# Scraping websites

You should already be familiar with scraping websites for useful data using Python.

## Basic text manipulation
- Using your previously built webcrawlers or API widgets, make a new script that detects all forms of the word "fox" in both english and hungarian (foxes, róka, rókák, etc.) in articles.

Now you might be wondering if there is an easier way to list all these forms instead of writing a lot of **if**s. 

## Regular Expressions

Regular Expressions are powerfull tools that let you define search patterns. You can use them to search, find, remove, replace and split by certain substrings in other strings. 
- Learn the basics of Regular Expressions (don't worry if they look threatening first or you don't know them all by heart)
- Win the Regular Expressions Crossword Puzzle: https://regexcrossword.com/#
- Write the "fox" search using Regular Expression
- Write a Regular Expression that finds the URL links in the articles
- ❓ Question: write a Regular Expression that splits the article text to separated words. What are the pitfalls of this method?
- ❓ Question: write a Regular Expression that splits the article text to separated sentences. What are the pitfalls of this method?

**NOTE: Don't just copy and paste Regular Expressions from StackOverflow if you need one! The best answers are usually not the exact ones you are looking for.**

- ⚡ Extra task: write a Regular Expression that parses different Hungarian phone number formats to the same format: *+36 XX XXX XXXX*. Can you do it without using additional Python code and relying on only Regular Expressions?

## NLTK

- install NLTK for Python
- read the first 5 chapters of the NLTK book and follow along: http://www.nltk.org/book_1ed/
- ❓ Question: what do you think, how well do the NLTK functions work for other languages?
- ⚡ Extra task: read chapter 6 as well