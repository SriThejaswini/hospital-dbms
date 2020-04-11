DROP TABLE IF EXISTS doctor;

CREATE TABLE IF NOT EXISTS doctor (
  doctor_id int NOT NULL primary key,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  department_id int NOT NULL references department(department_id),
  specialization_id int default NULL references specialization(specialization_id),
  contact_number varchar(100) default NULL
);
