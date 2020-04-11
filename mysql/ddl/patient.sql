DROP TABLE IF EXISTS patient;

CREATE TABLE IF NOT EXISTS patient (
  patient_id int NOT NULL auto_increment,
  name varchar(255) default NULL,
  gender varchar(255) default NULL,
  current_condition varchar(255) default NULL,
  blood_group varchar(255) default NULL,
  insurance_covered varchar(255) default NULL,
  insurance_name varchar(255) default NULL,
  primary key(patient_id)
) AUTO_INCREMENT=1;

