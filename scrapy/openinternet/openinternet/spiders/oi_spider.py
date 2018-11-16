import scrapy
from scrapy_splash import SplashRequest

class OpenInternetSpider(scrapy.Spider):
  name = "comments"

  def start_requests(self):
    self.index = 0
    yield SplashRequest(
      url = 'https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC',
      callback = self.parse,
    )
    
    # , meta={
    #   'splash': {
    #       'args': {
    #           # set rendering arguments here
    #           'html': 1,
    #           'png': 1,

    #           # 'url' is prefilled from request url
    #           # 'http_method' is set to 'POST' for POST requests
    #           # 'body' is set to request body for POST requests
    #       },

    #       # optional parameters
    #       'endpoint': 'render.json',  # optional; default is render.json
    #       'splash_url': '<url>',      # optional; overrides SPLASH_URL
    #       'slot_policy': scrapy_splash.SlotPolicy.PER_DOMAIN,
    #       'splash_headers': {},       # optional; a dict with headers sent to Splash
    #       'dont_process_response': True, # optional, default is False
    #       'dont_send_headers': True,  # optional, default is False
    #       'magic_response': False,    # optional, default is True
    #   }
    # })
  
  def parse(self, response):
    filename = "comments2"+str(self.index)
    with open(filename, 'wb') as f:
        f.write(response.body)
    self.log('Saved file %s' % filename)
    

