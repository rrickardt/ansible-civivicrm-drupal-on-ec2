create user 'civi'@'localhost' identified by 'civi';
create database civi character set utf8 collate utf8_unicode_ci;
grant trigger,select,insert,update,delete,create,drop,index,alter,create temporary tables,lock tables ON civi.* TO 'civi'@'localhost' IDENTIFIED BY 'civi';
