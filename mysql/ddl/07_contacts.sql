DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  pharmacy_id int references pharmacy(pharmacy_id),
  doctor_id int references doctor(doctor_id)
);
