create schema sampledb;

/*Table structure for table roles */

CREATE TABLE roles (
  role_id  INTEGER NOT NULL IDENTITY,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(500) NOT NULL)
  
/*Table structure for table user */
CREATE TABLE users (
  user_id INTEGER NOT NULL IDENTITY,
  group_id INTEGER NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) default NULL,
  last_name varchar(100) NOT NULL,
  phone_number INTEGER default NULL,
  verification_code varchar(200) default NULL,
  reset_pasword_code varchar(200) default NULL,
  password_question varchar(400) default NULL,
  password_answer varchar(100) default NULL)

/*Table structure for table user_group */
CREATE TABLE user_group (
  group_id INTEGER NOT NULL IDENTITY,
  name varchar(100) NOT NULL,
  description varchar(500) default NULL)

/*Table structure for table user_group_priv */
CREATE TABLE user_group_priv (
  ugp_id INTEGER NOT NULL IDENTITY,
  role_id INTEGER NOT NULL,
  group_id INTEGER NOT NULL)
