DROP TABLE if exists blood_donor;

CREATE TABLE if not exists blood_donor (
  donor_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  donor_name varchar(255) default NULL,
  age int default NULL,
  gender varchar(255) default NULL
) AUTO_INCREMENT=1;