I built a local network of 4 PCs and a hub, assigned a unique IP to each PC and indicated a common subnet mask.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m4/task%204.1/2_nets_with_gateway.png">

Checked how the network works using the ping command. Packets pass - the network is working. When sending packets, the hub sent packets to each PC, the recipient received packets, the rest of the PCs did not receive packets.

After removing the IP addresses, the network naturally stopped working, the packets stopped going.

In the next task, I assembled a network of six PCs, a server, and two hubs. The hubs were connected using Copper Cross-over cables.

Then I built a local one on 4 PCs and a switch. Unlike a hub-based network, the switch sent packets directly to the recipient. This option guarantees a decrease in network congestion, and also increases security, since the data will not get to those to whom it was not intended.

The next network was built from 8 PCs and two switches. 4 PCs were connected to each of the switches, and the switches were connected to each other using a Copper Cross-over cable. Then the network was split into two subnets. The first subnet had addresses like 192.168.0.x, the second - 192.168.1.x. To enable networks to exchange data, I configured routing on the router, using it as a gateway. Thus, the router gave me the ability to connect two subnets. In the previous version of the network with the connection of two switches and without a router, this could not be done.
