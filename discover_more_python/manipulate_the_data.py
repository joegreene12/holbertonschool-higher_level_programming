import urllib2
import json

request_headers = {'User-Agent': 'Holberton_School','Authorization': 'token 8a5ae0c17b192da0509fdaa48000f54c3f1d0e3e'}

githuburl = 'https://api.github.com/search/repositories?q=language:python&sort=stars&order=desc'
req = urllib2.Request(githuburl, headers=request_headers)
response = urllib2.urlopen(req)

vardictionary = json.loads(response.read()) #the dictionary containing json info

for i in range(0,30):
    print vardictionary["items"][i]["full_name"]
