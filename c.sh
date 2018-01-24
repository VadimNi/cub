#apt-get update && apt-get install -y nginx mc curl python-pip git gunicorn && 
rm /etc/nginx/sites-available/default && 
ln -sf /home/cub/etc/nginx.conf /etc/nginx/sites-available/default && 
/etc/init.d/nginx restart &&
gunicorn --log-file error_logs.log --access-logfile acclogs -b 0.0.0.0:8080 -c hello.py hello:app &
