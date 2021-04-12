**Task1.Part1**

1) Logged into root using the sudo su command. You can also use the **su - root** command.

2) Changed the password using the **passwd** command. With this action, changes were made to the **/etc/shadow file**. 
3) I looked at the users registered in the system with the **less /etc/passwd** command. 
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/less%20-%20file%20passwd.png">

Using the **w** command, I looked at the users, who are currently active on the system.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/w%20-%20linux.png">

I installed the **members** command and looked at the users in the adm group.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/members%20-%20linux.png">

4) I Installed **finger** and requested user information  
*finger -l stas*  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/finger.png">

Changed user information
*chfn stas*
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/chfn.png">

5) The **man** command acts as a reference for Linux commands. To call help about a command, you need to write - **man <command>**.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/man%20sudo.png">

The **-f** option to the man command displays a short description of the man page.
https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/man-f-man.png

The **-K** option allows you to search the manual pages themselves.

The **info** command is an alternative to the man command. But in this case, when displaying information, you can use the given hyperlinks.  
   The **-f** option to the info command gives more concise information on request.  
   the **-a** option finds all files matching the reference manual.
   <img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/info-a-info.png">

6) The **more** command is designed to view files page by page. If the file content is too large to fit on one screen, it displays the content page by page. 
But the text can only be scrolled forward. You can also redirect the output of other commands to the more command.
I open a .bash file using the command more
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/more%20open%20fail.png">

The **less** command performs a similar function, but allows text to scroll in both directions. Also from the command can search in both directions, open the file in the editor.  
I open a .bash file using the command less.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/less%20open%20file.png">

7) **finger** command lists for each user on the system at the moment: login name, full name, terminal name, idle time, registration time, job location, and phone number.

I created a .plan file in my home directory and wrote information to it. With **Finger** command, I was able to read the user information.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/finger%20plan.png">

8) **ls** command displays the contents of the current directory.

**ls** without parameters lists only folders.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/ls%20command.png">

**ls** with the **-a** option lists folders and files
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/ls-a.png">

**ls** with the **-u** option prints without sorting.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/ls-u.png">

**Task1.Part2**

1) **tree** command displays the structure of folders and files as a tree.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/tree.png">

The tree command displays files and folders with a "c" in their names.

*tree -f - P '* c' --prune*

Output result.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/tree-f-p%20result.png">

List subdirectories of the root directory up to and including the second nesting level.
*tree -L 2*

2) You can determine the type of file using the command **file**

*File <path to file>*  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/file%20command%20-%20example.png">

3) Go to home directory
**cd ~** or just **cd**
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/cd.png">

Go to root directory
*cd /*

Going an absolute path
*cd /home/stas/Videos*
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/absolutive%20patch.png">

Jump along a relative path
*cd / home
cd stas
cd Videos*
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/relative%20patch.png">

4) **ls** command displays the contents of the current directory.

**ls** with the **-a** option lists folders and files, including hidden ones

**ls** with the **-l** option displays a verbose listing showing owner, group, creation date, size, and other options.
https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/ls-l.png

5) I created a test folder
*mkdir test*
I created a file "test" in the test folder
*touch /home/stas/test/test.txt*

passed information about the folder structure to the file - **test.txt**
*tree -o /home/stas/test/test.txt*
https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.1/test-O-result.png

copied the created file to home directory
cp /home/stas/test/test.txt / home / stas / test / txt

deleted file and directory
rm -R / home / stas / test

deleted the file copied to home directory

rm /home/stas/test.txt

copying .bash_history file with name change
cp /home/stas/.bash_history / home / stas / test / labwork2

Symbolic links can be compared to shortcuts. They contain the address of the desired file. When you open a link, the desired file or folder opens. When you delete a file / folder, the link will be saved, but it will lead to nowhere.

A hard link is another name for a file. Creating a hard link creates an additional pointer to the existing file, but not a copy of it.


Creating a symbolic link
ln -s labwork2 softlink

Create a hard link
ln labwork2 hardlink

Renaming hard and symbolic links

After deleting the labwork2 file, the symlink stopped working as it was essentially a shortcut. The hard link still works because it continues to point to the correct location on the disk where the data is stored.

In order to use the locate utility to find all files containing the squid and traceroute sequence, I have to install locate, squid and traceroute.

sudo apt get mlocate
sudo apt get squid
sudo apt get traceroute

locate traceroute

locate squid

Section Information

lsblk

sda - hard disk partitions
sr0 - cdrom

Count the number of lines containing a given sequence of characters in a given file.

grep -c "bash" .profile



Using the find command in the / etc folder, I searched for files with the word host in their names

find / etc -name "* host *"

List all objects in / etc that contain the ss character sequence.
find / etc -name "* ss *"

I can duplicate a similar command using a bunch of grep like this

grep -r "ss" / etc

Print of the contents of the / etc directory

tree / etc> tree_etc.txt

Character (byte-oriented) devices read and write data as a stream of bytes. These include serial and parallel ports, tape drives, terminals, and sound cards.

Block (block-oriented) devices read and write data in blocks of a fixed size. Block devices provide random access to their data. An example is a hard drive.

The device type can be determined using commands

ls / dev /
lsblk
fdisk -l

You can determine the file type using the command

file <file name>

File types: text, executable, images, archives, libraries, block, symbolic, symbolic and hard links, tunnels, socket files, etc.

List the first 5 directory files that were recently accessed in the / etcdirectory.

find / etc -ctime +1 | head -n 10
