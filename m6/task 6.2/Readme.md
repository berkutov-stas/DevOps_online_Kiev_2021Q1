I have installed and configured DHCP and DNS server on VM1. I used **DNSMASQ**.

Dnsmasq.conf settings look like this  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/Dnsmasq.conf%20settings.png">

VM1 received an address 192.168.2.60  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/Dnsmasq%20vm1%20dhcp%20addr.png">

VM2 received an address 192.168.2.96  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/Dnsmasq%20vm2%20dhcp%20addr.png">

The second time I configured **DHCP** with **ISC-DHSPSERVER**.

The dhcpd.conf file settings look like this  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/dhcpd.conf%20file%20configure.png">

VM1 received an address 192.168.2.130  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/VM1%20isc-dhcp-server%20working.png">

VM1 received an address 192.168.2.131   
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/VM2%20isc-dhcp-server%20working.png">

I configured **DNS Server** in **DNSMASQ**.
DNS-server is called stas.lan. It's address 192.168.2.25
Checking the availability of a DNS server from VM2 and VM3.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/Dnsmasq%20vm1%20dns.png">
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.2/Dnsmasq%20vm2%20dns.png">

