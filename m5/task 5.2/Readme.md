The **/etc/passwd** file is a collection of data about system users. In file contains the following fields: username, password (hidden), user uid, group gid, description of 
his functions and working directory.

Users with uid up to 999 are system users. These are the users: tcpdump, tss, rtkit and others.

The **/etc/group** file contains information about username, password (hidden) and gid the group he is a member of.

**UID** is the user ID. This is theu nique number assigned to each user. You can find the UID in the **/etc/** passwd file. UID accepts values from 0 to 65535.
But number 0 always has superuser root. UIDs from 1 to 100 are reserved by agreement for system needs, and some Linux distributions reserve UIDs 1 through 999.

**GID** is the group ID. It uses to organize access for multiple users to some resources use user groups. Each group has its own unique GID. You can view the GID of the
user's group and its membership in the group or groups in file **/etc/group**.

To add a user to the system, use the **useradd username** command. Only root or users with sudo privileges can use this command.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/useradd.png">

The user can then set a password using the **passwd username** command.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/passwd%20user.png">

If you use the command **useradd -m username**, the home directory will appear in the **/home** user directory.

You can change the name of an existing user with the command **usermod -l new_username old_username**
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/chanhe%20user%20name.png">

Skel_dir - it is a user directory. Contains files that define the user's environment in system.

To delete a user along with his files, you need to perform the following steps.

First, with the **find / -user username** command, we search for all user files, then with the command **pgrep -u username** find all user processes. We delete all user processes 
with the command **killall -9 -u username**. Delete the user with the **userdel username command**. Check if there is user in **/etc/ sudoers**.

<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/deleting%20user.png">

To block a user in Linux, you can use the **passwd -l user_name** command

To unblock a user using the passwd command, you need to write

**passwd -u user_name**

You can remove the user's password with the **passwd username** command. After that the user can change the password.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/change%20passwd.png">

Display the extended format of information about the directory - **ls -l command**. Allows you to see the set of rights set for a user in a specific directory.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/ls%20-l.png">

Each file has three access parameters: **read, write, execute**. Moreover, each the file has three categories of users, for which you can set different combinations of access
rights: **owner, group, others (ugo)**.

Each user can only have full access to files owned by him is or to those to which he is allowed access. Only Root can work with everyone files.

There are also special file permissions, which allows ordinary users perform actions with files without knowing the superuser password:

- **SUID** - allows regular users to run programs as superuser.
- **SGID** - used to organize shared folders.
- **Sticky-bit** - users can only create, read and execute files, but cannot delete files owned by other users.

To change the owner of a folder, use the **chown** command.

The user test has created a folder called training. Changed the owner of the folder to stas with the command - **sudo chown stas /home/test/training**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/chown%20folder.png">

Also I changed the group of the folder owner - **sudo chown stas:stas /home/test/training**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/chown%20fold%20group.png">

Octal representation of access rights is necessary for more convenient administration representation of access rights.

4 - Reading
2 - Recording
1 - execution

**chmod -R 755 filename/folder name** - will set full file permissions for owner, read and performance for the group that includes the owner, performance for the rest.

**chmod 700 filename/folder name** - will give full rights only to the owner

**Umask** is a user mask that is used to define ultimate access rights.

By default, Umask is 0022 for superuser and 0002 for ordinary. Default Umask value installed in the **/etc/.bashrc** or **/etc/.profile files**.

Umask value for stas (superuser)
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/umask%20stas.png">

Umask value for test (ordinary user)
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/umask%20test.png">

Full access mode for folder access is 0777, for file - 0666. Accordingly, to determine the right to a folder, you need to subtract the mask of a certain from 0777 or 0666 user.
0777 - 0022 = 0755, etc.

You can display the mask value in symbolic notation using the -S option:
**umask -S**  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/umask%20-s.png">

To set a new value, you need to change or add a line at the beginning of the file **/etc/profile**. For example umask 027.

**Sticky bit** is a special permission to access folders. Used by adding a fourth digit to normal resolutions. First digit is always 1.

Example - **chmod 1700/home/stas/rel**

Full access rights to the **rel** folder for the **stas** user have been set. For everyone else - no access.

The user **test** could not enter the **rel** folder due to lack of access rights.
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m5/task%205.2/folder%20rel%20access%20denied%20for%20test.png">

To execute a script in the specified shell, you need to set the flag for it executability.

for example, by the command
**chmod ugo+x script-name**
