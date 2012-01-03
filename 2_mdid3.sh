#!/bin/bash
#

echo '====Step 2  begins ====' 
#make dir for error reports just incase
echo 'mkdir errors'
mkdir errors

# need to look into this

#echo 'updating RHEL first'
#echo 'yum update -y'
#sudo yum update -y   
#echo 'yum upgrade -y'
#sudo yum upgrade -y


# 2> send errors to a text file in the errors dir, -y says "yes" to questions
echo 'yum...'
sudo yum install openjdk-6-jre-headless -y 2> errors/openjdk-6-jre-headless-errors.txt
sudo yum install python-setuptools -y 2> errors/python-setuptools-errors.txt
sudo yum install libjpeg62-dev -y  2> errors/libjpeg62-errors.txt
sudo yum install unixodbc -y  2> errors/unixodbc-errors.txt
sudo yum install unixodbc-dev -y  2> errors/unixodbc-dev-errors.txt
sudo yum install freetds-dev -y  2> errors/freetds-errors.txt
sudo yum install tdsodbc -y  2> errors/tdsodbc-errors.txt
sudo yum install python-dev -y  2> errors/python-dev-errors.txt
sudo yum install libmysqlclient16-dev -y  2> errors/libmysqlclient16-errors.txt
sudo yum install python-ldap -y  2> errors/python-ldap-errors.txt
sudo yum install python-memcache -y  2> errors/python-memcache-errors.txt
sudo yum install memcached -y  2> errors/memcached-errors.txt
sudo yum install libapache2-mod-wsgi -y  2> errors/libapache2-mod-wsgi-errors.txt
sudo yum install g++  -y 2> errors/g++-errors.txt
sudo yum install mysql-server -y  2> errors/mysql-server-errors.txt
echo 'easy-installing...'
sudo easy_install pyodbc 2> errors/pyodbc-errors.txt
sudo easy_install mysql-python 2> errors/pyodbc-errors.txt
sudo easy_install pil 2> errors/pyodbc-errors.txt
sudo easy_install python-dateutil 2> errors/pyodbc-errors.txt
sudo easy_install flickrapi 2> errors/pyodbc-errors.txt
sudo easy_install werkzeug 2> errors/pyodbc-errors.txt
sudo easy_install reportlab 2> errors/pyodbc-errors.txt


echo '============== yum & easy_install complete =============='
echo '================ please check for errors and ================'
echo '=============== execute 3_mdid.sh  when ready ==============='