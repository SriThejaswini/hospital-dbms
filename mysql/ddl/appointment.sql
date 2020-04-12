DROP TABLE if exists appointment;

CREATE TABLE if not exists appointment (
  appointment_number int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  appointment_date date NOT NULL,
  appointment_time time NOT NULL,
  fee varchar(100) default NULL,
  doctor_ID int default NULL references doctor(doctor_id),
  patient_ID int default NULL references patient(patient_id)
) AUTO_INCREMENT=1;
