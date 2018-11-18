import scrapy

class oiscraper(scrapy.Spider):
  name = "openinternet"
  

  def start_requests(self):
    self.index = 0
    urls = ['https://www.fcc.gov/ecfs/filing/1115051176643']
    for url in urls:
      yield scrapy.Request(url=url, callback=self.parse)
    
  def parse(self, response):
    filename = "comments"+str(self.index)
    with open(filename, 'wb') as f:
        f.write(response.body)
    self.log('Saved file %s' % filename)