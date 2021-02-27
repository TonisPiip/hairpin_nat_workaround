#!/bin/bash
FILE=kivirik

sudo cp $FILE /etc/network/if-up.d/$FILE
sudo chown root:root /etc/network/if-up.d/$FILE 
sudo chmod 755 /etc/network/if-up.d/$FILE 

sudo /etc/init.d/networking restart

