DROP TABLE IF EXISTS donates;

CREATE TABLE IF NOT EXISTS donates (
  donor_id int NOT NULL references donor(donor_id),
  patient_id int NOT NULL references patient(patient_id),
  donation_date date NOT NULL,
  PRIMARY KEY(donor_id,patient_id)
);
