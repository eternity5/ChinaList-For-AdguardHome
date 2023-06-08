wget https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf -O ChinaList.conf -q
sed -i -e 's/server=/[/g' -e 's/114.114.114.114/]https:\/\/dns.alidns.com\/dns-query/g' ChinaList.conf
echo "tls://8.8.4.4" >> ChinaList.conf
echo "tls://dns.google" >> ChinaList.conf
mv ChinaList.conf ChinaList.txt
