#!/usr/bin/with-contenv bash

. /app/duck.conf


if [ !"$UPDATE_IPV6" = "true" ]; then 
    #Check for Ipv4 
    RESPONSE=`curl -s "https://www.duckdns.org/update?domains=$SUBDOMAINS&token=$TOKEN&ip="`
    if [ "$RESPONSE" = "OK" ]; then
    echo "Your IP was updated at "$(date)
    echo "Your IPv4 was updated at "$(date)
    else
    echo "Something went wrong when updating your IPv4, please check your settings  "$(date)
    exit 1
    fi

else
      #Check for Ipv6 
    IPV6=`curl -s "https://v6.ident.me/"`
    if [ "$IPV6" = "" ]; then
    echo "Problem fetching IPv6, skipping update..."
    exit 1
    fi

    RESPONSE=`curl -s "https://www.duckdns.org/update?domains=$SUBDOMAINS&token=$TOKEN&ipv6=$IPV6"`
    if [ "$RESPONSE" = "OK" ]; then
    echo "Your IPv6 was updated at "$(date)
    else
    echo "Something went wrong, please check your settings  "$(date)
    echo "Something went wrong when updating your IPv6, please check your settings  "$(date)
    exit 1
    fi
fi





