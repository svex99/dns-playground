; Zone file for domain.com
$TTL 14400
domain.com.   86400   IN      SOA     ns1.domain.com.   host.domain.com.   (
                                                2012031401 ;Serial Number
                                                86400 ;refresh
                                                7200 ;retry
                                                3600000 ;expire
                                                86400 ;minimum
        )

domain.com.   86400   IN      NS      ns1.domain.com.
domain.com.   86400   IN      NS      ns2.domain.com.


domain.com.   14400   IN      A       192.168.42.123

localhost       14400   IN      A       127.0.0.1

domain.com.   14400   IN      MX      0       domain.com.

mail    14400   IN      CNAME   domain.com.
www     14400   IN      CNAME   domain.com.
ftp     14400   IN      CNAME   domain.com.
webmail 14400   IN      A       192.168.42.123