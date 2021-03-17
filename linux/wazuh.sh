#!/bin/bash

# This script can be used to configure Wazuh Agent on linux servers
# Usage: ./wazuh.sh (or) bash wazuh

AGENT_AUTH='/var/ossec/bin/agent-auth'
OS=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }'| tr -d '"')

# Checks os and calls and executes commandsd depending on distro
case $OS in
    "centos" | "fedora")
		yum clean all
		rpm --import http://packages.wazuh.com/key/GPG-KEY-WAZUH
		cat > /etc/yum.repos.d/wazuh.repo <<-EOF
		[wazuh_repo]
		gpgcheck=1
		gpgkey=https://packages.wazuh.com/key/GPG-KEY-WAZUH
		enabled=1
		name=Wazuh repository
		baseurl=https://packages.wazuh.com/3.x/yum/
		protect=1
	EOF
		echo 'Enter IP address:'
		read IP
		echo "Installing WAZUH-AGENT"
		WAZUH_MANAGER="$IP" WAZUH_PROTOCOL='tcp' yum install wazuh-agent-3.9.5-1 -y
		$AGENT_AUTH -m $IP
		service wazuh-agent start
		echo "Installation complete"
		;;
    "ubuntu" | "debian")
		CHECK=$(curl -s "https://packages.wazuh.com/key/GPG-KEY-WAZUH" | apt-key add -)
		if [ $CHECK == 'OK' ]; then
			echo "deb https://packages.wazuh.com/3.x/apt stable main" > /etc/apt/sources.list.d/wazuh.list
			UPDATE=$(apt-get update 2>/dev/null)
			if [[ ${#UPDATE} == 0 ]];then
				apt-get install apt-transport-https ca-certificates
			fi
			echo 'Enter IP address:'
			read IP
			echo "Installing WAZUH-AGENT"
			WAZUH_MANAGER_IP='$IP' WAZUH_PROTOCOL='tcp' apt-get install wazuh-agent=3.9.5-1 -y
			update-rc.d wazuh-agent defaults 95 10
			$AGENT_AUTH -m $IP
			service wazuh-agent start
			echo "Installation complete"
		else
			echo "Check firewall rules or check chattred files if any here is the error"
			echo $CHECK
		fi
		
		;;
	# Shouldn't happen unless not a known distro
    *)
		echo "Unsupported Distro"
		exit 0
esac

