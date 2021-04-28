I have created two PCs on VirtualBox. The first has two network interfaces, the second has one. I configured the network interfaces via **netplan** by editing the **.yaml** file.

**VM1 network interfaces**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/vm%201%20ip%20a.png">

**VM2 network interfaces**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/vm2%20ip%20a.png">

A connection has been established between VM1 and VM2  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/vm2%20vm1%20ping.png">

I configured internet access for VM2 using iptables using the commands:

iptables -A FORWARD -i enp0s8 -o enp0s3 -s 192.168.2.0/24 -j ACCEPT
iptables -A FORWARD -i enp0s3 -o enp0s8 -d 192.168.2.0/24 -j ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.2.0/24 -o enp0s3 -j SNAT --to-source 192.168.2.25

VM2 now has internet access.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/vm2%20inet%20access.png">

Using the **nslookup** command, I determined that 8.8.8.8 belongs to DNS.google.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/dns%20google.png">

Determined the ip-address of the epam.com site using the nslookup command.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/epam%20ip%20addr.png">

**VM1 routing table**
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/vm1%20route.png">

**VM2 routing table**
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/vm2%20route.png">

Defined the default gateway using command **ip route | grep default**    
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/default%20gateway.png">

Made Traceroute to google.com by **mtr** command.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m6/task%206.1/traceroute%20google.png">
