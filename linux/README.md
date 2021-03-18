## _Useful Blue-Team Linux Scripts_

##### The items in this directory serve to expidite common tasks that system administrators may experience in their line of work.

**jailuser.sh**
> this script will create an SSH chroot jail for an existing user, 
> to prevent an unprivileged user (or service accounts) from running undesirable and potentially malicious commands

*Origin:* https://github.com/dannysheehan/linux-chroot-jail

*Usage:*
      ``` ./jailuser.sh <username>```

**linuxbanners.sh**
> this is a script that configures an SSH banner on most Linux machines.
> To customize the banner, all the user needs to do is type the login banner they desire when prompted

*Usage:*
      ``` ./linuxbanners.sh```
    
**sec2.txt**
> this is just a text file that linuxbanners.sh and splunkforwarder.sh pull from 
> to display a beautifully formatted ASCII logo art.
    
**splunkforwarder.sh**
> this is a script that can be used to configure a Splunk Universal Forwarder instance on most Linux machines
> user input is requested to direct the forwarder to the proper Splunk Server.

*Usage:*
      ``` ./splunkforwarder.sh```

**splunkforwarder.tgz**
> this file is the Splunk Universal Forwarder that, once configured, allows a machine to send logs to
> a Splunk Server.
> _Please see Splunk's website for further installation details_

**ShellDetect.py**
> This python script aids in finding webshells on Linux boxes. Example usage:
> python shelldetect.py -r True -d ./

**wazuh.sh**
> This is a shell script for implementing Wazuh Agent on popular Linux Distros
> Usage: ./wazuh.sh (or) bash wazuh

**Wazuh Agent** 
> Wazuh is a free, open source and enterprise-ready security monitoring solution for threat detection, integrity monitoring, incident response and compliance.

**fw.txt**
> IPtables script for hardening network access to Linux hosts
