DROP TABLE IF EXISTS treats;

CREATE TABLE IF NOT EXISTS treats (
  doctor_id int default NULL references doctor(doctor_id),
  patient_id int default NULL references patient(patient_id),
  PRIMARY KEY(doctor_id,patient_id)
);
