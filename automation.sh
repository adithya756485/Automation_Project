s3_bucket=upgrad-adithyamohan
myname=adithyamohan

sudo apt update -y

sudo apt-get install apache2

systemctl --type=service

tar -cvf adithyamohan-httpd-logs-08022022-172430.tar /var/log/apache2/access.log /var/log/apache2/error.log

tar -xvf adithyamohan-httpd-logs-08022022-172430.tar -C /tmp

aws s3 \
cp /tmp/${myname}-httpd-logs-${08022022-172430}.tar \
s3://${s3_bucket}/${myname}-httpd-logs-${08022022-172430}.tar

 
