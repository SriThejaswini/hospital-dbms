DROP TABLE IF EXISTS doctor_availability;

CREATE TABLE IF NOT EXISTS doctor_availability (
  doctor_id int NOT NULL references doctor(doctor_id) ,
  available_date date NOT NULL,
  from_time time NOT NULL,
  to_time time NOT NULL,
  slot_booked boolean default false,
  patient_id int default NULL references patient(patient_id),
  PRIMARY KEY(doctor_id, available_date, from_time, to_time)
); 
