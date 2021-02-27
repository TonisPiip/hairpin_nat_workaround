# Simple hairpin NAT workaround

When having a static IP and port-forwarding to a local server, there's issues with connecting to that server from inside the local network via the outside IP. 

Real solution is a hairpin nat, where the router changes the request to have it look as if it's coming from the outside internet and not just redirected. 

However some routers do not have this option. There may be other solutions but one solution is to have `/etc/hosts/` direct traffic directly to the server.

This is annoying on computers which might be accessing other networks.

This solution was tested on Linux Mint


# setup

This git is setup for the kivirik.ee domain.

Add rules in /etc/hosts to point to the correct local IP for the domains and subdomains you want to redirect to

```
192.168.1.222	kivirik.ee
192.168.1.222	mail.kivirik.ee
# Also another name that will not be disabled
192.168.1.222	kivirik.local
```	

modify `kivirik` to run the commands you want 

run `./install.sh` to copy the script to the correct folder and restart networking. 

# what it does

When a network goes up, the system pings `kivirik.local` if it responds, we uncomment kivirik.ee and mail.kivirik.ee host lines.  
Also set a firewall rule to allow ssh 
Log to tonis's home dir

when it fails to ping to the local server it:

Comments out the host lines. 
updates the filewall rule to block ssh connections. 


