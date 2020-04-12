DROP TABLE IF EXISTS donates;

CREATE TABLE IF NOT EXISTS donates (
  donor_id int default NULL references donor(donor_id),
  patient_id int default NULL references patient(patient_id),
  PRIMARY KEY(donor_id,patient_id)
);
