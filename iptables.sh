
#Forwarding Traffic from wireless to wired interface
iptables --flush
iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
iptables --append FORWARD --in-interface wlan0 -j ACCEPT
sysctl -w net.ipv4.ip_forward=1

