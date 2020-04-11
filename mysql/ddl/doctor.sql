DROP TABLE IF EXISTS doctor;

CREATE TABLE IF NOT EXISTS doctor (
  doctor_id int NOT NULL PRIMARY KEY,
  doctor_name varchar(255) default NULL,
  department_id int references department(department_id),
  specialization_id int default NULL references specialization(specialization_id),
  contact_number varchar(100) default NULL
);
