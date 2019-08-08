
# If there are any .sh or .sql scripts you want to run on the database immediately after it has been created, 
# you can put them into a host directory and then mount the directory at /docker-entrypoint-initdb.d/ inside the container.
# For example, for a MySQL Server container https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/docker-mysql-more-topics.html

# file .sh, .sql will be auto run when conatainer be created and started 
CREATE USER 'caeruxlab'@'%' IDENTIFIED BY '.caerux';
CREATE DATABASE IF NOT EXISTS `db_demo_1` ;
GRANT ALL ON `db_demo_1`.* TO 'caeruxlab'@'%' ;
FLUSH PRIVILEGES;