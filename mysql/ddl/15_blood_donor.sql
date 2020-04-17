DROP TABLE if exists blood_donor;

CREATE TABLE if not exists blood_donor (
  donor_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  donor_name varchar(255) default NULL,
  age int ,
  gender varchar(255) default NULL,
  blood_group ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-') NOT NULL,
  contact_number varchar(100) default NULL,
  CHECK (age >= 18)
) AUTO_INCREMENT=1;
