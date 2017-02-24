#!/usr/bin/python
import urllib;
import HTMLParser;
import fbchat;
status=0;
urlText = []
list2 = "Oops! bookings have not yet opened"
site="http://www.kallada.com/e-bookings/16/Bangalore/31/Cochin/13-04-2017?is_from_chart=false&res_id=&return_date=&triptype=oneway"
#handle=urllib.urlopen(site)
#html=handle.read()
class parseText(HTMLParser.HTMLParser):
        
    def handle_data(self, data):
        if data != '\n':
            urlText.append(data)

lParser = parseText()

lParser.feed(urllib.urlopen(site).read())
lParser.close()
for item in urlText:
#    print item
  if list2 in item:
     status=0
     break
  else:
     status=1
if (status==1):
    client = fbchat.Client("unni10286@gmail.com", "XXXXX")
    friends = client.getUsers("Sreedevi Sreenivasan")  # return a list of names
    friend = friends[0]
   # print friend
    sent = client.send(friend.uid, "Ticket now Available in Kallada G4(kallada.com) for 13th April")

#else:
#    client = fbchat.Client("unni10286@gmail.com", "")
#    friends = client.getUsers("Sreedevi Sreenivasan")  # return a list of names
#    friend = friends[0]
#    print friend
#    sent = client.send(friend.uid, "Not Available")
