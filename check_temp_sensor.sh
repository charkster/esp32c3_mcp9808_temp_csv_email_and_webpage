#!/bin/bash
if curl -s --max-time 3 --head  --request GET http://192.168.0.203 | grep "200 OK" > /dev/null; then 
   echo "sensor is UP"
else
  RECIPIENT="YOUR_EMAIL@gmail.com"
  SUBJECT="Temp sensor down"
  BODY="\n$(date)"
  echo -e "Subject: $SUBJECT\n\n$BODY" | msmtp --account=default "$RECIPIENT"
  echo "sensor is DOWN"
fi
