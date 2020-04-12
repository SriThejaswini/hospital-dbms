DROP TABLE IF EXISTS assists;

CREATE TABLE IF NOT EXISTS assists (
  assistant_id int default NULL references assistant(assistant_id),
  patient_id int default NULL references patient(patient_id),
  PRIMARY KEY(assistant_id,patient_id)
);
