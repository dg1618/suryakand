/*Data for the table `roles` */
insert into roles (role_id,name,description) values (1,'ROLE_ADMIN','Admin user group');
insert into roles (role_id,name,description) values (2,'ROLE_USER','User registered via site for normal usage');
insert into roles (role_id,name,description) values (3,'DOWNLOAD_CONTACTS','Role that allows users to access api after account upgrade');
insert into roles (role_id,name,description) values (4,'SHARE_CONTACT','Role that allows users to download their contact');
insert into roles (role_id,name,description) values (5,'API_ACCESS','Role that allows users to access contact data via API');

/*Data for the table `user_group` */
insert  into user_group (group_id,name,description) values (1,'GENERAL_USERS','User group for general users those who have registered from web');
insert  into user_group (group_id,name,description) values (2,'ADMIN_USERS','Admin user group who have access to site administration sections');
insert  into user_group (group_id,name,description) values (3,'SYSTEM_USER','A dummy user group that is used as dummy/system user');
insert  into user_group (group_id,name,description) values (4,'SILVER_USER','A User group for users who have upgraded their account to sliver');
insert  into user_group (group_id,name,description) values (5,'GOLD_USER','A User group for users who have upgraded their account to gold');
insert  into user_group (group_id,name,description) values (6,'PLATINUM_USER','A User group for users who have upgraded their account to platinum');

/*Data for the table `user_group_priv` */
insert  into user_group_priv(ugp_id,role_id,group_id) values (1,1,2);
insert  into user_group_priv(ugp_id,role_id,group_id) values (2,2,1);
insert  into user_group_priv(ugp_id,role_id,group_id) values (3,2,2);
insert  into user_group_priv(ugp_id,role_id,group_id) values (4,2,3);
insert  into user_group_priv(ugp_id,role_id,group_id) values (5,2,4);
insert  into user_group_priv(ugp_id,role_id,group_id) values (6,3,4);
insert  into user_group_priv(ugp_id,role_id,group_id) values (7,2,5);
insert  into user_group_priv(ugp_id,role_id,group_id) values (8,3,5);
insert  into user_group_priv(ugp_id,role_id,group_id) values (9,4,5);
insert  into user_group_priv(ugp_id,role_id,group_id) values (10,2,6);
insert  into user_group_priv(ugp_id,role_id,group_id) values (11,3,6);
insert  into user_group_priv(ugp_id,role_id,group_id) values (12,4,6);
insert  into user_group_priv(ugp_id,role_id,group_id) values (13,5,6);
insert  into user_group_priv(ugp_id,role_id,group_id) values (14,4,2);
insert  into user_group_priv(ugp_id,role_id,group_id) values (15,5,2);
insert  into user_group_priv(ugp_id,role_id,group_id) values (16,3,2);

/*Data for the table `users` */
insert  into users (user_id,group_id,username,password,first_name,middle_name,last_name,phone_number,verification_code,reset_pasword_code,password_question,password_answer) values (1,1,'user1.dummy@gmail.com','plOTAVnBoyt96xgbmUuR8F9jJBM1oRwkUXIICeubqCK0rEm364Sax6dIYtHazhwY','User1',NULL,'Dummy1',185,'verified','62e2e104-ee83-4412-bbed-7d7af1078b57','pet name','test');
insert  into users (user_id,group_id,username,password,first_name,middle_name,last_name,phone_number,verification_code,reset_pasword_code,password_question,password_answer) values (2,2,'user2.dummy@gmail.com','X1WQqcKlRXHL6TLktN2P65RYTulGujqlZQ/is50sy3iwNIFgrF5jcJGwOvHUOprA','User2',NULL,'Dummy2',NULL,'verified',NULL,'pet name','test');
insert  into users (user_id,group_id,username,password,first_name,middle_name,last_name,phone_number,verification_code,reset_pasword_code,password_question,password_answer) values (3,4,'user3.dummy@gmail.com','9jxMw1u+1EUTmLkkos0B5g0MmFos2ofWZKzaYJt4MFS1b0r58euTwPi9uT0hoWMc','User3',NULL,'Dummy3',NULL,'verified',NULL,'pet name','test');
insert  into users (user_id,group_id,username,password,first_name,middle_name,last_name,phone_number,verification_code,reset_pasword_code,password_question,password_answer) values (4,6,'user4.dummy@gmail.com','wzqXFmZJT4T4Fynfql8nLeFGQoA0Q4OIHrZKJIdAE2D50DiWviVmxzN1lSQMaL6J','User4',NULL,'Dummy4',2,'verified',NULL,'pet name','test');