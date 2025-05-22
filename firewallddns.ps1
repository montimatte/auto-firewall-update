    # obtain IP address of the hostname
    $ips = [System.Net.Dns]::GetHostAddresses("test.contoso.com")

    # extract IP from string
    $regex = [regex] "\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"
    $ip2 = $regex.Matches($ips) | %{ $_.value }

    # here you can replace 1.1.1.1 with a static IP address should you wish to add more than one IP. The firewall allow IP will be overwritten with these new IP information. If you don’t wish to use this line, then set $iplist = $ip2
    $iplist = "$ip2,192.168.1.0/24,172.16.0.4"    # list containing the IPs
    netsh advfirewall firewall set rule name="firewall rule name1" new remoteip= $iplist
    netsh advfirewall firewall set rule name="firewall rule name2" new remoteip= $iplist
    exit 0