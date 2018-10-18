sysctl -w vm.overcommit_memory=1 
cat /proc/sys/vm/overcommit_memory 
sysctl -w net.core.somaxconn=65535 
cat /proc/sys/net/core/somaxconn 
echo never > /sys/kernel/mm/transparent_hugepage/enabled
cat /sys/kernel/mm/transparent_hugepage/enabled 
ulimit -n 65536
