Create SCHEMA Project2;
Create database Project;
use Project;
DROP TABLE IF EXISTS pharmacy;

CREATE TABLE IF NOT EXISTS pharmacy (
  pharmacy_id int NOT NULL PRIMARY KEY auto_increment,
  pharmacy_name varchar(255),
  email varchar(255) default NULL,
  address varchar(255) default NULL,
  zip varchar(10) default NULL,
  phone varchar(11) default NULL,
  fax varchar(100) default NULL
) AUTO_INCREMENT=1;
