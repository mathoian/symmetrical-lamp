
#! /bin/bash
if [ "$1" == "" ]  
then
echo "argunmento invalido - exemplo de uso $0 - IP 127.0.0  " 
else
read host
for host in {100..106};do
ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$/ - ping ok/' 
done 
fi
