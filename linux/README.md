## _Useful Blue-Team Linux Scripts_

##### The items in this directory serve to expidite common tasks that system administrators may experience in their line of work.

**1. jailuser.sh**
> this script will create an SSH chroot jail for an existing user, 
> to prevent an unprivileged user (or service accounts) from running undesirable and potentially malicious commands

*Origin:* https://github.com/dannysheehan/linux-chroot-jail

*Usage:*
      ``` ./jailuser.sh <username>```

**2. linuxbanners.sh**
> this is a script that configures an SSH banner on most Linux machines.
> To customize the banner, all the user needs to do is type the login banner they desire when prompted

*Usage:*
      ``` ./linuxbanners.sh```
    
**3. sec2.txt**
> this is just a text file that linuxbanners.sh and splunkforwarder.sh pull from 
> to display a beautifully formatted ASCII logo art.
    
**4. splunkforwarder.sh**
> this is a script that can be used to configure a Splunk Universal Forwarder instance on most Linux machines
> user input is requested to direct the forwarder to the proper Splunk Server.

*Usage:*
      ``` ./splunkforwarder.sh```

**5. splunkforwarder.tgz**
> this file is the Splunk Universal Forwarder that, once configured, allows a machine to send logs to
> a Splunk Server.
> _Please see Splunk's website for further installation details_

**6. ShellDetect.py**
This python script aids in finding webshells on Linux boxes. Example usage:
python shelldetect.py -r True -d ./

