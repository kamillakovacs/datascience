import ScraPy

class RepubSpider(scrapy.Spider):
  name = "repub"

  def start_requests(self):
    self.index = 0
    urls = [
      'https:index.hu'
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
