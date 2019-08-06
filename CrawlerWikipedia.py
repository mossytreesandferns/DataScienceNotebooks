# youtube tutorials: thenewboston and SDET


import os        
import requests
import bs4
from bs4 import BeautifulSoup

def result_page_spider():
    url = 'https://en.wikipedia.org/wiki/Cajun_fiddle' #+ str(page)
    source_code = requests.get(url)
    source_text = source_code.text
    #print(source_text)
    soup = BeautifulSoup(source_text,"lxml")
    for link in soup.find_all('a',{'class':'mw-headline'}): ##,,class_='mw-parser-output':# inspect for link into the individual job descriptions
        #href = 'url of Cajun Fiddler' + link.get('href')
        
        fiddler_name = link.string
        #print(href)
        print(link.get('href'))
        print(fiddler_name)
        #fiddler_data(href)
       

result_page_spider()
# def fiddler_data(item_url):
#     source_code = requests.get(item_url)
#     source_text = source_code.text
#     soup = BeautifulSoup(source_text)    
#     for fiddler in soup.findAll('a', {'class':'job_description'}):  # inspect page for name of job #, description, location, etc  
#         print(job_title.string, job_description.string, job_location.string)
#     for job in soup.findAll('a'):
#             href =  'url' + job.get('href')
#             print(href)



