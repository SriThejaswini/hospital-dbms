DROP TABLE IF EXISTS patient;

CREATE TABLE IF NOT EXISTS patient (
  patient_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  gender varchar(255) default NULL,
  blood_group varchar(255) default NULL,
  current_condition varchar(255) default NULL,
  insurance_covered boolean default False,
  insurance_name varchar(255) default NULL
)AUTO_INCREMENT = 1;
