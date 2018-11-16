import ScraPy

class RepubSpider(scrapy.Spider):
  name = "repub"

  def start_requests(self):
    self.index = 0
    urls = [
      'https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC'
    ]
    for url in urls:
      yield scrapy.Request(url=url, callback=self.parse)
    
  def parse(self, response):
    filename = "repub_response"+str(self.index)
    with open(filename, 'wb') as f:
      f.write(response.body)
    self.log('Saved file %s' % filename)


## Scraping using libraries

# - Get familiar with the **ScraPy** library and CSS selectors
# - Scrape the same sites with **ScraPy**. Try to use built in code that finds the useful texts in an article. How does it work out in Hungarian?
# - Learn about crawler rules: what is *robot.txt* on a site? What are the crawling time intervals allowed by certain sites?
# - Learn about honeypots: in what ways would a company try to prevent automatic crawling of their content? 
