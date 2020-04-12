DROP TABLE if exists lab_test;

CREATE TABLE if not exists lab_test (
  test_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  price varchar(100) default NULL,
  test_type varchar(255) default NULL,
  fee varchar(100) default NULL,
  result varchar(255) default NULL,
  appointment_number int default NULL references appointment(appointment_number)
) AUTO_INCREMENT=1;
