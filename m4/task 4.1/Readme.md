**1. Network for 4 PCs, connection using a hub**

I built a local network of 4 PCs and a hub, assigned a unique IP to each PC and indicated a common subnet mask.

<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/2_nets_with_gateway.png">

Checked how the network works using the ping command. Packets pass - the network is working. 
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/ping_4%20PC_net.png">

When sending packets, the hub sent packets to each PC, the recipient received packets, the rest of the PCs did not receive packets.

After removing the IP addresses, the network naturally stopped working, the packets stopped going.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/ip_deleted.png">

**2. Network for 6 PCs and a server, connection using two hubs**

In the next task, I assembled a network of six PCs, a server, and two hubs. The hubs were connected using Copper Cross-over cables.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/net_with_server.png">

**3. Network on 4 PCs, connection using a switch**

Then I built a local one on 4 PCs and a switch. Unlike a hub-based network, the switch sent packets directly to the recipient. This option guarantees a decrease in network congestion, and also increases security, since the data will not get to those to whom it was not intended.

**4. Network for 8 PCs, connection using two switches**

The next network was built from 8 PCs and two switches. 4 PCs were connected to each of the switches, and the switches were connected to each other using a Copper Cross-over cable.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/8_pc_2_switches.png">

**5. 2 subnets for 4 + 4 PCs, connection using 2 switches and a router**

Then the network was split into two subnets. The first subnet had addresses like 192.168.0.x, the second - 192.168.1.x. To enable networks to exchange data, I configured routing on the router, using it as a gateway. Thus, the router gave me the ability to connect two subnets. Subnets were tested using the ping command from a PC with the address 192.168.0.1 on a PC with the address 192.168.1.1
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/2_nets_with_gateway.png">

In the previous version of the network with the connection of two switches and without a router, this could not be done. 
