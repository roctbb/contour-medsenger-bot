sudo pip3 install -r requirements.txt
sudo cp agents_contour.conf /etc/supervisor/conf.d/
sudo cp agents_contour_nginx.conf /etc/nginx/sites-enabled/
sudo supervisorctl update
sudo systemctl restart nginx
sudo certbot --nginx -d contour.ai.medsenger.ru
touch config.py
