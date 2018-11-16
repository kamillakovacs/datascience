import scrapy

class OpenInternetSpider(scrapy.Spider):
  name = "comments"

  def start_requests(self):
    self.index = 0
    urls = [
      'https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC'
    ]
    for url in urls:
      yield scrapy.Request(url=url, callback=self.parse)
  
  def parse(self, response):
    filename = "comments"+str(self.index)
    with open(filename, 'wb') as f:
        f.write(response.body)
    self.log('Saved file %s' % filename)
    

