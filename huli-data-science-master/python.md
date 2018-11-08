# Python 3 + Pandas tutorial

## Why Python?

PROS:
- Easy to learn (in some aspects it's similar to pseudo-code)
- Large variety of frequently updated libraries used by statisticians, data miners and data scientists (and also by Deep Learning enthusiasts)
- Multipurpose language (runs websites, apps or background tasks)
- Really compact, easy to read code
- Supports OOP and asynchronous function calls
- *import antigravity*
- You will have to manipulate lists (arrays with different types of variables) a lot while managing data tasks. These operations are really easy in Python: **data[:-1]**, **[item.upper() in item for data]**

CONS:
- No curly brackets, just tabs or spaces (simply copying and pasting code might break things)
- No switch-case statements because of this very reason (at least for now)
- Some libraries might not be available on all systems (or only different versions might be available) but this is getting better
- Is a high-level programming language so it can get slow (especially with graphics)
- Don’t forget: 2.7 and 3+ syntaxes slightly differ (StackOverflow answers might be for different versions, for instance *print('3+')* and *print '2.7'*)

You can learn Python quickly, but it takes time to get used to the **pythonic way of programming**:
- Avoid iterating over objects the same way you would do in other languages (for i=0; i<len(my_list); i++ → don’t do this in Python!)
- Try to rewrite your former code to be more compact and use less lines of code
- Try to follow style guidelines described in PEP https://pep8.org/
- Name your variables and function names using_words_separated_by_underscores instead of theCamelCaseNotation
- Python offers advanced and fast error handling (Try - Except)

## Learning materials
- Python DOCS: https://docs.python.org/3.6/tutorial/introduction.html
- Learn Python using Magic: https://github.com/zotroneneis/magical_universe
- Sentdex's Python Tutorials: https://www.youtube.com/watch?list=PLQVvvaa0QuDe8XSftW-RAxdo6OmaeL85M&v=IX6mc9l6tY4
- Learn Python in one video: https://www.youtube.com/watch?v=N4mEzFDjqtA

## Task for the week:
If you feel you are familiar with Python, try to solve the following problem using the **pandas** library (pip install pandas):

- Make a Kaggle account and download the Google Play Store Apps Dataset: https://www.kaggle.com/lava18/google-play-store-apps
- Which app has the lowest number of reviews?
- What is the average, median and mode of the App ratings (Rating column)?
- What is the estimated average/median/mode file size?
- What are the most popular genres?
- Convert the Last Updated column to YYYYY-MM-DD format and insert it as an extra column next to Last Updated, with the name "Last Updated Readable" and save it as a new, separate CSV file.
- Create a new, separate CSV that has all rows of data in reverse.
