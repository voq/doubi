echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p  #保存生效
sysctl net.ipv4.tcp_available_congestion_control  #查看内核是否已开启BBR
lsmod | grep bbr  #查看BBR是否启动
