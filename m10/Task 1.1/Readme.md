**Task 10. Ansible**  

In this task I used 5 PCs: Ansible server, local PC on Ubuntu, PC on Ubuntu in the cloud (AWS), 2 PCs on the cloud on Centos.  

My EC2 instances.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ec2%20instances.png"> 

My file hosts.txt  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20file%20hosts.png"> 

My file ansible.cfg. In it, I wrote a default interpreter for python.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20cfg%20file.png"> 

Executing a command **Inventory List** and **Inventory Graph**
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20inventory%20list.png"> 
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20inventory%20graph.png"> 

Executing a command **uptime**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20uptime.png">   

Executing a command **Ping Check**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20success%20ping%204%20pc%20ec2%20plus%20local.png">  

First Ansible playbook was also Ping Check  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20playbook1.png"> 

Next Ansible playbook was Installing and starting WebServer on remote PCs.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20apache%20install.png"> 

This Ansible playbook code  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/apache%20install%20yml.png"> 

Next playbook was Copying index.html and restarting Webserver.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/copying%20html.png"> 

After copying and restarting, the site runs on 4 remote PCs.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%204%20sites%20running.png"> 

This Ansible playbook code.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/html%20copy%20yml.png"> 

Ansible playbook using loop.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/playbook_loop.png"> 

Ansible playbook using template and jinja.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m10/Task%201.1/ansible%20template.png"> 
