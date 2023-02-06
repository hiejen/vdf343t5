#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b15f4e13-3e70-40c1-848c-9a4fa7ce4a03"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

