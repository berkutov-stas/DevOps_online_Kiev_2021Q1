**1. Corporate network of the organization**

2 buildings with 2 floors. Each floor has 5 PCs. The assignment does not indicate anything about routers or subnetting the network, so I went the simplest way. 
In each building, I hung up my own switch, which are connected to each other using a Copper Cross-over cable.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.2/2%20buildings%2020%20PC%202%20switch.png">

Theoretically, it was possible to use 1 switch for 2 buildings, but then 10 cables would have to be pulled from one of the buildings at once, and this would create cumbersomeness.

PCs in the first building received addresses from 192.168.0.1 to 192.168.0.10, in the second - from 192.168.0.11 to 192.168.0.20

The performance was checked using the Ping command.

**2. Corporate network of 8 subnets on 4 floors**

My task was to organize 8 subnets (5 + 3 PCs in each). I managed to organize the network using 2 switches. Each of the switches contains 4 subnets.
I also used a router to do the routing. I managed to achieve the ability to send packets from any PC on the network to any PC.

<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.2/8%20work%20group%20net.png">

First, I set up a VLAN for each of the 8 subnets. 

*enable  
conf t  
vlan 10 name WG1*

The same for the rest of the VLANs.

I assigned a network interface to each of the VLANs using the commands:

*interface fastethernet 0/1  
switchport mode access  
switchport access vlan 10*

I repeated the same for the remaining 7 VLANs.

I gave VLAN access to computers from the workgroup.

*interface fastEthernet 0/2-5  
switchport mode access  
switchport access vlan 10*

the same for other VLANs.

After that, I configured trunk port on each of the switches by connecting them to the router.

*interface gigabitEthernet 0/1  
switchport mode trunk  
switchport trunk allowed vlan 10,20,30,40*

The same is on the second switch fot VLANs 50, 60, 70, 80.

After that, on the router, I created subinterfaces for VLANs and assigned them IP addresses, which became gateways.

*interface fastEt 0/0.1  
encapsulation dot1Q 10  
ip address 192.168.1.254 255.255.255.0*

I did the same for the rest of the VLANs and after that I registered dynamic routing by command

*ip routing*

Thus, I was able to achieve communication between all PCs in 8 subnets.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.2/All%20pings.png">


**3. Corporate network of 30 PCs in 5 buildings**
In this task, I needed to create a local network of 30 PCs, which are located in 5 buildings. For each building, I used switches 2960, switch 3560 provided routing. 
To access the Internet, I used router 2911.

<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.2/4.2.3%20task%20schema.png">

On 2960 switches, I configured vlans to which I added a PC. A trunking port for communication with the 3560 is also configured.

WLAN is also configured on the 3560 switch. WLAN interfaces are assigned IP addresses, which are gateways for subnets. Also on 3560 VLAN with a 2911 router is configured.

The 2911 router has a routing table configured to communicate with each PC on each subnet.
*ip route 192.168.1.0 255.255.255.0 192.168.10.1   
ip route 192.168.2.0 255.255.255.0 192.168.10.1  
ip route 192.168.3.0 255.255.255.0 192.168.10.1  
ip route 192.168.4.0 255.255.255.0 192.168.10.1  
ip route 192.168.5.0 255.255.255.0 192.168.10.1*

As a result, every PC sees everyone on the network.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.2/ping%201.1%20to%2010.2.png">  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.2/ping%201.1%20to%205.1.png">
