udo mkdir -p /home/purwadhika_ifwan
sudo mkdir -p /tmp/backup_log_ifwan
cd /home/purwadhika_ifwan
sudo cat /var/log/syslog | grep Shutdown | head -3 > systemlog.txt
sudo tar -cvzf systemlog_$(date +%m-%d-%Y).tar.gz systemlog.txt
sudo ln systemlog_$(date +%m-%d-%Y).tar.gz /tmp/backup_log_ifwan/backup_$(date +%m-%d-%Y).tar.gz
echo "Succes"

