## Description of the binaries:

- chattr
	- Binary for locking or unlocking
	- How to use `man chattr` or `chattr --help`

- iptables
	- Binary for setting up a firewall
	- Usage: `iptables --help` or `man iptables`

- vim
	- A very useful text editor
	- Usage: `vim {filename}`
- nano
	- Another very useful text editor
	- Usage: `nano {filename}`
- curl
	- A useful file downloader
	- Usage: `curl {file location}`

- wget
	- Yet another  useful file download
	- Usage: `wget {file location}

- yum
	- A repository based downloader (used on yum-based systems)
	- Usage: `yum install {file}`


## Description of the packages:
> Installation: rpm -i {package-name.rpm}
- chrony.rpm
	- An upgraded NTP Server/Client for Linux systems
	- How to use `man chronyd` or `man chronyc`
	
- ntp.rpm && ntpdate.rpm
	- Another NTP Server/Client for Linux systems
	- How to use `man ntp` and `man ntpdate`	
	
- e2fsprogs.rpm
	- Package to install or reinstall e2fsprogs
	- Fixes any binaries that have been missing from installation of OS.

- epel-install-2.11-1.el7.x86_64.rpm
	- Gives access to the epel repository
	- Required for openvas
	
- openvas.tgz
	- A vulnerability scanner 
	- This archive file hosts the required binaries for openvas to function as intended.

- mod_ssl.rpm
	- A webserver add-on that allows for SSL encryption
	
- mysql.rpm & mysql-server.rpm
	- Packages for MySQL database server & client access
	- After installing, you can access a database with the `mysql` command
