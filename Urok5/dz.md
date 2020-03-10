Задание 1:
nmcli con mod enp0s3 ipv4.method manual ipv4.addr "192.168.0.19/24"

nmcli con modify enp0s3 +ipv4.dns "192.168.01, 8.8.8.8"

sudo nmcli con add con-name geekbrains-con ifname enp0s3 type ethernet ip4 192.168.0.19/24 gw4 192.168.0.1

sudo nmcli con mod geekbrains-con ipv4.dns "192.168.0.1 8.8.8.8 8.8.8.4"

sudo nmcli con up geekbrains-con

sudo nmcli con up "Проводное соединение 1"


Задание 2:
sudo iptables -p INPUT DROP 
sudo iptables -p OUTPUT ACCEPT
sudo iptables -p FORWARD ACCEPT
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -m state -state  RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -s 192.168.0.***/24 -i enp0s3 -p tcp —dport 22 -j ACCEPT
sudo iptables -A INPUT -i enp0s3  -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -i enp0s3  -p tcp --dport 443 -j ACCEPT
sudo iptables -A INPUT -i enp0s3  -p udp --sport 53 -j ACCEPT

Задание 3:
sudo iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 80 -j DNAT --to-destination 192.168.0.19:80
sudo iptables -A FORWARD -p tcp -d 192.168.0.19 --dport 8080 -j ACCEPT
