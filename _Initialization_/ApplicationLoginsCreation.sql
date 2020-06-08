/*
	Creator:	20191127@Billy
	Task:		Ploutos Database Logins Initialize - [Redmine: #123970]
	Server:		Ploutos
*/


CREATE USER bo_api_admin IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON pagcor_db.* TO bo_api_admin;

CREATE USER bo_api_pandora IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO bo_api_pandora;

CREATE USER api_cron_data IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO api_cron_data;

CREATE USER api_cron_data_1 IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO api_cron_data_1;

CREATE USER api_cron_job IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrycrondb.* TO api_cron_job;

CREATE USER api_main IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO api_main;

CREATE USER api_main_1 IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO api_main_1;

CREATE USER api_aff IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO api_aff;

CREATE USER api_aff_1 IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO api_aff_1;

CREATE USER athena_api IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON blueberrydb.* TO athena_api;