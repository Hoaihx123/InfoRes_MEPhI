import requests
url = 'http://127.0.0.1:5000/delete/101'
# values = {
#     'lat': 40.1825726,
#     'lng': -75.5406694,
#     'timeStamp': "2015-12-10 22:35:51",
#     'title': "Fire: FIRE ALARM",
#     'twp': "ROYERSFORD",
# }
# response = requests.post(url, data=values)
# print(response.json())
# values = {
#     'lat': 54.56,
#     'lng': -12.28,
#     'twp': "ROYESDSXCD",
# }
# response = requests.put(url, data=values)
# print(response.json())

# values = {
#     'lat': 40.524,
#     'lng': -12.28,
#     'twp': "ROYESDSXCD",
# }
# response = requests.put(url, data=values)
# print(response.json())

response = requests.delete(url)
print(response.text)

# params = {
#     'date': '2015-12-10',
#     'hour': '17'
# }
#
# response = requests.get('http://127.0.0.1:5000/count_calls', params=params)
# print(response.json())
