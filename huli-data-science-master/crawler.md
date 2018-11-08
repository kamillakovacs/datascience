# Scraping websites

You should already be familiar with Python and the Python libraries **requests** and **beautifulsoup4**.

## Character encoding 😈
There are different ways to represent human readable characters. Computer scientists had to find efficient ways to store characters as a series of 0 and 1 bits. 

Different languages have different special characters or they might have different character sets than latin altogether. However, one could squeeze in their own alphabet into these constrained number of bits and show them on a computer display, using certain workarounds. 

This worked well until the internet came along and computers from different places started to communicate with each other. Different special characters started appearing as wierd text, and vowels with accents sometimes became strange hieroglpyhs or different vowels (like Ű appearing as Û).

Computer scientists had to figure out ways to standardize encoding while also providing fallback for older systems. The most widely used character encoding scheme is UTF-8 (this is also JSON's default encoding).

If you scrape sites, send or save data with the WRONG CHARACTER ENCODING, you risk losing special characters (as certain encodings use less bits to store information, you will sometimes lose information while ocnverting to another encoding, then converting back!). Thankfully this is less of a problem now, as most web applications now use UTF-8 by default, but if you wanted to write a crawler back in the 2000s, you would had to spend hours just writing code that figures out the exact character encoding of a site, because the webmasters usually provided misleading or conflicting information about it on their websites.

[![Characters, Symbols and the Unicode Miracle - Computerphile](https://img.youtube.com/vi/MijmeoH9LT4/0.jpg)](https://www.youtube.com/watch?v=MijmeoH9LT4)

- ❓ Question: what's the Japanese slang for wierd characters on the computer screen caused by character encoding issues?
- ❓ Question: in what ways can you define the character encoding for a website?
- ❓ Question: what are the pros and cons of using ISO 8859-2 vs UTF-8 character encoding? (You should always use UTF-8 now but different character encodings had their own benefits, when computers were much slower)

## Scraping manually

- Choose 2 different Hungarian news sites you would like to scrape, check their DOM structure and identify the element(s) that contain a news article
- Write crawlers that can read news articles from these websites and print out the article's text

You will see that defining the beginning and the end of the article is pretty easy for a human reader, but it isn't self evident for a script:
- It's hard to tell what belongs to the article and what doesn't (recommended articles, related stories, user comments, etc.)
- It's hard to tell what is an ad and what is the actual article
- Sometimes ads or legal notices appear first instead of the article, sometimes there are redirects, etc.

## Scraping using libraries

- Get familiar with the **ScraPy** library and CSS selectors
- Scrape the same sites with **ScraPy**. Try to use built in code that finds the useful texts in an article. How does it work out in Hungarian?
- Learn about crawler rules: what is *robot.txt* on a site? What are the crawling time intervals allowed by certain sites?
- Learn about honeypots: in what ways would a company try to prevent automatic crawling of their content? 

## Write a spider

- Choose 1 Hungarian news site (can be the same you have cralwed earlier)
- Using **ScraPy** write a webcrawler that starts at one of the articles and follows the **internal links** on the webpage. Follow all links to articles on the same site. 
- Create a CSV file in **pandas** and save/update the scraped data the following way: article url, article title, number of times crawled
- Your crawler should respect *robots.txt* for these articles
- If you just follow the links, you will end up in a loop. Define a depth for crawling links, so the steps the spider can take are limited.
- ❓ Question: you could go around in a loop forever while crawling links on websites. How would you avoid or lessen the chance of crawling in loops? 