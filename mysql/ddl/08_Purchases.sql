DROP TABLE IF EXISTS purchases;

CREATE TABLE IF NOT EXISTS purchases (
  pharmacy_id int default NULL references pharmacy(pharmacy_id),
  patient_id int default NULL references patient(patient_id)
);
