# auto-firewall-update
This simple powershell script allows you to update firewall rules so that they allow connections only from certain IPs.
The main functionality is that it supports DNS and DDNS names, which are converted in their corresponding IP and inserted in to the list.
You can also specify static IP addresses (for example some local one) and even entire networks or subnets.

To automatically update the rules periodically you can import the .XML file in Task Scheduler and customize it for your purposes.
