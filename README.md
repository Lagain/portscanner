# Portscanner

Portscanner searches for a specific port by scanning a range of IP addresses given by the user. It returns a list of all IP addresses that have the specified port open.

### How it works:

1. First nmap does a TCP scan on the starting IP address through the last IP address for a port specified by the user.

2. Standard nmap output is sent to /dev/null.

3. Output of the scan is then sent to a file <em>Portscan</em> in a grep-able format.

4. The <em>Portscan</em> file is displayed, stored, and piped to grep to filter for the keyword open

5. All IP addresses with that port open are added to new file <em>Portscan2</em>
