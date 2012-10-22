wcaudit
=======

Workers' Comp Audit Report Rail 3

This project is a demonstration of using Rails/Postgres9 alternative to MSSQL/Access/Filemaker desktop solutions.

This program is meant to be run on a private server either AWS or Rackspace running MySQL, Postgres 8 and 9.

The reason being to move to and from Rails Playground (Mysql and Postgres 8) or Webfaction (MySQL and Postgres 9).

This program is also meant to be augmented with Python.



[marc@Centos-5 rails_apps]$ /usr/local/pgsql910/bin/psql postgres postgres
psql (9.1.0)
Type "help" for help.

ERROR:  role "marc" already exists
postgres=# create user taxman with  password 'flaming';
CREATE ROLE
postgres=# create user wcaudit with  password 'wcaudit';
CREATE ROLE

postgres=# create database wcaudit;
CREATE DATABASE
postgres=# create database rrg_1120_taxes;
CREATE DATABASE

As user 'postgres' run the sql scripts.

 1024  /usr/local/pgsql910/bin/psql wcaudit postgres < wcaudit_post.sql 
 
 1027  /usr/local/pgsql910/bin/psql rrg_1120_taxes postgres < irs1120_post.sql 
 
 uninstall any system rails through the system packager.
 build and install yaml.  this is on opensuse.

install RVM
=========
curl -L https://get.rvm.io | bash -s stable --ruby
curl -L https://get.rvm.io | bash -s stable --rails

source /home/marc/.rvm/scripts/rvm

rvm use whatever ruby points to 1.9.3 and above
rvm gemset create irs1120
rvm gemset use irs1120

cd to project
gem install pg -- --with-pg-config=/usr/local/pgsql910/bin/pg_config 
bundle install