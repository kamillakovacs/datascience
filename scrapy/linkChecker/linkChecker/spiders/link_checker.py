import scrapy
class IndexSpider(scrapy.Spider):
  name = 'link_checker'
  allowed_domains = ["www.index.hu"]
  start_urls = ['https://www.index.hu/']

  def parse(self, response):
    self.index = 0
    print(response.url)
    a_selectors = response.xpath('//h1[@class="cikkcim"]')
    for selector in a_selectors:
      text = selector.xpath("text()").extract_first()
      # link = selector.xpath("")
      request = response.follow(text, callback=self.parse)
      yield request
    filename = "index_response"+str(self.index)
    with open(filename, 'wb') as f:
      f.write(response.body)
    self.log('Saved file %s' % filename)