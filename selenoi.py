from selenium import webdriver
import scrapy
 
browser = webdriver.Chrome()
 
browser.get("https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC")
 
table = browser.find_element_by_tag_name("table")
# attrs = browser.execute_script('var items = {}; for (index = 0; index < arguments[0].attributes.length; ++index) { items[arguments[0].attributes[index].name] = arguments[0].attributes[index].value }; return items;', table)
# print(attrs)

filingbody = table.find_elements_by_tag_name("a")
filinglink = filingbody.get_attribute("href")

class oiscraper(scrapy.Spider):
  index = 0
  name = "openinternet"
  start_urls = filinglink

  def parse(self, response):
    yield scrapy.Request(filingbody, callback = self.parse)
    filename = "comments"+str(self.index)
    with open(filename, 'wb') as f:
        f.write(response.body)
    self.log('Saved file %s' % filename)
    

# for filings in filingbody:
#   filinglink = filings.get_attribute("href")
#   print(filinglink)



# byline = table.split('\n')
# print(byline)





# left to do:
# find URLs in table - done
# look into each URL within table
# extract name and comment