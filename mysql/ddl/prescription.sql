DROP TABLE if exists prescription;

CREATE TABLE if not exists prescription (
  prescription_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  medicine_name varchar(255) default NULL,
  dosage_per_day varchar(255) default NULL,
  appointment_number int default NULL references appointment(appointment_number)
) AUTO_INCREMENT=1;
