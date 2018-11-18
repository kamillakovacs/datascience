from selenium import webdriver
# from selenium.common.exceptions import TimeoutException
# from selenium.webdriver.support.ui import WebDriverWait
# from selenium.webdriver.support import expected_conditions as EC
# from selenium.webdriver.common.by import By
import scrapy
from scrapy.crawler import CrawlerProcess

browser = webdriver.Chrome()
 
browser.get("https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC")
 
table = browser.find_element_by_tag_name("table")
# attrs = browser.execute_script('var items = {}; for (index = 0; index < arguments[0].attributes.length; ++index) { items[arguments[0].attributes[index].name] = arguments[0].attributes[index].value }; return items;', table)
# print(attrs)

# for comments in table:
#   commentlink = comments.find_element_by_tag_name("a")
# print(table)

filingbody = table.find_element_by_tag_name("a")

filinglink = filingbody.get_attribute("href")
print(filinglink)

# try:
#     element_present = EC.presence_of_element_located(browser.find_element_by_tag_name("table"))
#     WebDriverWait(browser, timeout).until(element_present)
# except TimeoutException:
#     print ("Loading took too much time")


# table = browser.find_element_by_tag_name("table")
# filingbody = table.find_elements_by_tag_name("a")

# for filings in filingbody:
#   filinglink = filings.get_attribute("href")
#   print(filinglink)




# class oiscraper(scrapy.Spider):
#   name = "openinternet"
#   start_urls = filinglink

#   def parse(self, response):
#     yield scrapy.Request(filinglink, callback = self.parse)
#     filename = "comments-3"
#     with open(filename, 'wb') as f:
#         f.write(response.body)
#     self.log('Saved file %s' % filename)

# process = CrawlerProcess({
#     'USER_AGENT': 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)'
# })

# process.crawl(oiscraper)
# process.start() # the script will block here until the crawling is finished
    

# for filings in filingbody:
#   filinglink = filings.get_attribute("href")
#   print(filinglink)

# byline = table.split('\n')
# print(byline)





# left to do:
# find URLs in table - done
# look into each URL within table
# extract name and comment

# spider on main ecps page
# selenium: find urls
# start spider