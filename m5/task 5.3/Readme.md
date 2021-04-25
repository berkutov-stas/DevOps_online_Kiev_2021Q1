**TASK5.3**
*Part1*

In Linux, a process can have five states: birth, running, waiting, ready, and death. Also, processes can sometimes be in a "zombie" state.

The **Pstree** command displays a tree structure of all running user processes.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/pstree.png">

**Proc** is a virtual file system and does not take up disk space. It is comfortable way to get information about the system. Most programs get information from files /proc. You
can view information about the processor using the command **cat /proc/cpuinfo**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/proc%20info%20cpu.png">

To get complete information about a process, you can use the **ps -ef** command, best of all in combination with the more command: **ps -eF | more**.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/ps%20-%20eF.png>

You can view running processes using **htop** command. It allows you to search among processes, sorting, lowering priority, killing a process.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/htop.png">

Displaying processes as a tree - **htop -t**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/htop%20-t.png">

To see only kernel processes, you can use the command **pstree 2**.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/pstree%202.png">

**pstree with no parameters** shows only the tree of user processes.

To view the status of a process, you can use the command **ps aux** The status will be indicated in column Stat. R - active running process, S - sleeping process, T - suspended
process, Z is a zombie process, D is in a state of continuous waiting.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/ps%20aux.png">

You can display the processes of a specific user with the command **ps -fU username**

Displaying group processes - **ps -fG adm**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/ps%20-fG%20adm.png">

Print the process tree - **ps -e --forest**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/ps%20-%20forest.png">

**top** command allows you to display information about the system, a list of processes with update information about the resources they consume.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/top.png">

To select the processes of a certain user, you need to press U, and then enter the name user.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/top%20user.png">

After starting top, you can use the interactive commands: **L** - search by word, **i** - switching the display mode of processes that are not currently using resources
processor, **V** - display processes in the form of a tree, **H** - display process streams, etc.

Sort the contents of the processes window by the amount of time used by the processor: interactive command **O**, and then enter the command **Time**.

Process priority means how much more CPU time will be devoted to this process compared to others. The priority value can range from 19 (minimum priority) to -20 (maximum priority).

You can use the **Nice** parameter in **htop** command (**F7** for increase priority or **F8** - to decrease). The priority of the process to start can be specified with 
**nice** command on the command line: **nice -n 10 process name**.

You can change the priority of an existing process with the renice command: **renice -n 10 name process**.

The **top** command can be used to change the priority of running processes. To do this, press **r**, then enter the PID of the process, and then change the value in the 
Renice PID Number to value field priority.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/top%20renice.png">

The **kill** command sends a signal to kill the process. The most commonly used signals are - **SIGTERM (15)** and **SIGKILL (9)**. SIGTERM - the signal requests the termination
of the process. It can be ignored. SIGKILL - a signal causes the process to terminate immediately.

An example of using the SIGKILL command

**kill SIGKILL PID or kill -9 PID**

Another option is to **pkill process name**. The **killall** command kills all processes with the given name.

The **jobs, fg, bg** commands are needed to manage background processes. Each command with an ampersand (&) at the end turns the command into a background command. The jobs
command displays the background jobs at the moment, fg displays the background job in shell, bg - send the task to the background. Nohup allows the process to start
even after logging out. Nohup intercepts the signal the session ends and allows the command to run in the background. Command syntax like this: **nohup command &**

The **sleep** command pauses execution for the duration of any script. You can send to the background and output from it.

**Example**
sleep 100
Ctrl+z
bg - to background
fg - from background  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/sleep%20fg%20bg.png">

The **Yes** command prints out command line arguments indefinitely until killed. If in no arguments are given on the command line, then prints the string y indefinitely. You can
use in scripts.

**Part2**

Installed **OpenSSH** on a Windows PC. To do this, I had to add the path to the system variable Path.

Generated an RSA key with the **ssh-keygen** command. After that, I copied the key to the Linux machine with the **scp** command.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/copy-key-to-ubuntu.png">

Uploaded the key to **authorized-keys** file on Linux.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/copy-key-to-ubuntu.png">

Checked the work of ssh connection via cmd and Powershell.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/connect%20win-to-ubuntu.png">
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/powershell-connect-to-linux.png">

Several methods can be used to improve security in ssh: in **sshd_config** change the **PermitRootLogin** parameter to **no** to disable login as root, in the
**AllowUsers, AllowGroups** parameters specify only those users who have the right to work through ssh: **AllowUsers username**, **AllowGroups groupname**, or you can
deny access to certain users by specifying them in the parameters: **DenyUsers, DenyGroups, DenyUsers username, DenyGroups groupname**, you can replace the ssh port, which
the default is 22, to the other in the **Port** parameter, you can specify specific interface addresses for entering the server in the parameter **ListenAddress**, set
idle timeout **ClientAliveInterval** parameter

Generated a key of type DSA with the command **ssh-keygen -t dsa**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20dsa%20%D0%BA%D0%BB%D1%8E%D1%87%D0%B0.png">

Connected to the remote machine using the dsa key  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/dsa_connect_ubuntu.png">

Generated a key of type ECDSA with the command **ssh-keygen -t ecdsa**
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20ecdsa%20%D0%BA%D0%BB%D1%8E%D1%87%D0%B0.png">

Connected to remote machine using ecdsa key  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.3/ecd_connect_ubuntu.png">

Port forwarding for the SSH client from the host machine I made in VirtualBox settings.



Initially, Wireshark did not show my network interface. To solve this problem I

used sudo dpkg-reconfigure wireshark-common command and added my user to

Wireshark sudo adduser stas wireshark.
