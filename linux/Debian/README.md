## Description of the deb files and how to use it:

- .deb file usage
    - For all the deb file in this folder use the following command `dpkg -i <filename>.deb` to install the package

- iptables.deb
	- Package install or reinstall for iptables
    - Fixes any issues with iptables
    - Note: Even though this works for both ubuntu and debian debian will give an error but iptables will still be functional. To fix the error for future use enter the following command `apt-get -f install`
    
- e2fsprogs_debian/ubuntu.deb
    - Package to install or reinstall e2fsprogs
    - Fixes any binaries that have been missing from installation of OS.
    - Note: Both the files are distro specific so make sure *ubuntu is ran in ubuntu and *debian in debian ones.
    
    
## How to utilize the NTP.tgz archive:
- This archive contains the main packages required to implement a functional NTP Server/Client on most Debian-based distros.
- Extract the files: tar -czpf ntp.tgz
- Install the .deb files as described above.
- Once installed, configure the NTP Server/Client as usual.
- For further instruction `man ntp` or `man ntpdate`
