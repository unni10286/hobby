#!/bin/bash

CLIENT_ID="FREE_TRIAL_ACCOUNT"  # No need to change
CLIENT_SECRET="PUBLIC_SECRET"   # No need to change

read -r -d '' jsonPayload << _EOM_
  {
    "number": "+919048365405",
    "message": "Howdy! Is this exciting?"
  }
_EOM_

curl -X POST -H "X-WM-CLIENT-ID: $CLIENT_ID" -H "X-WM-CLIENT-SECRET: $CLIENT_SECRET" -H "Content-Type: application/json" -d "$jsonPayload" http://api.whatsmate.net/v1/whatsapp/single/message/1
