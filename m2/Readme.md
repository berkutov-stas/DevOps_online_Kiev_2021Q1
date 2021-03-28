**PART 1. HYPERVISORS**

The most popular hypervisors are Amazon, KVM, VMware ESX Server, Microsoft Hyper-V, Citrix XenServer, Oracle VM VirtualBox, Microsoft Virtual PC. Hypervisors such as
Microsoft Hyper-V, VMware ESX Server and Citrix XenServer are hypervisors of the type 1. This means that they are installed directly on the hardware. And then the necessary
operating systems are installed on the hypervisor. Hypervisors VMware Workstation,Oracle VM VirtualBox, Microsoft Virtual PC, Parallels Desktop are type 2. They are installed
on the operating system.

**PART 2. WORK WITH VIRTUALBOX**

I installed Virtual Box on my computer with Windows 7 installed. After that I downloaded the Ubuntu Server, which I installed as a virtual machine. I created VM1 and then
experimented with a virtual machine - shutdown, reboot, mouse and keyboard capture, etc.

Then I cloned the virtual machine and got VM2. <img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m2/task2.2/VM%20Clone.png">

After that, I created a group called Ubuntu for my virtual machines. <img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m2/task2.2/VM%20Group.png">

After that, I experimented with creating a snapshot tree.

Then I did an export of the virtual machine. After that, I tried to do an import, but I couldn't manage it for a while. Later it turned out that the reason was insufficient disk space. After cleaning the disk, the import was successful.

Then I got into the configuration of the virtual machine. I was able to set up usb and was able to successfully interact with the flash drive. In addition, I adjusted the audio and was able to listen to the video from YouTube, which I launched through the Ubuntu GUI.

After that, I experimented with various network models. I was able to set up communication between the Host and two virtual machines in different modes.

I also worked with the command line of the virtual machine and used commands to create a virtual machine, start, clone, and so on.

The work with vagrant began with difficulties. I ended up with an old version of Powershell, so I had to update Management Framework.

I created a test wagrant box using the McDir command. Then I initialized the box using the init command. And then he launched vagrant unitary enterprise. After that, I was able to log into the virtual machine through the Paths using the US protocol.

Then I created my own wagrant box.
