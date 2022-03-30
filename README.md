# docker-duckdnsIPv6
First try to create a docker für Unraid to use DuckDns with Ipv6 Support

I would recommend anyone who doesn't need IPv6 support to rather use the very good Docker from Linuxserver.io --> https://github.com/linuxserver/docker-duckdns

I have created this Docker only for learning purposes and for special use with Unraid. I don't know if it works without problems with other Architectures. 

Install guide:
  1) Register your Subdomain on Duckdns Website
  2) Download the Docker in Unraid 
  3) Fill out the needed Parameters
      SUBDOMAINS  = subdomain1,subdomain2 
      TOKEN       = token
      UPDATE_IPV6 = True for IPv6, False for Ipv4
  4) Try out if it dosen't work with Network Type: Host
