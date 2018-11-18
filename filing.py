from selenium import webdriver
import PhantomJS

driver = webdriver.PhantomJS()
 
driver.get("https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC")

header = browser.find_element_by_tag_name("header")

print(header)