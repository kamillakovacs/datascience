from selenium import webdriver
 
browser = webdriver.Chrome()
 
browser.get("https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC")
 
table = browser.find_element_by_tag_name("table")
filings = table.find_elements_by_tag_name("td")
# print (filing.text)

for filing in filings:
    name = filing.find_element_by_class_name("col-md-8")
    print('Name: ' + name.text)

    shortcomment = filing.find_element_by_class_name("col-md-12")
    print('Comment snippet: ' + shortcomment.text)

    filingbody = filing.find_element_by_tag_name("a")
    filinglink = filingbody.get_attribute("href")
    print('URL: ' + filinglink)

