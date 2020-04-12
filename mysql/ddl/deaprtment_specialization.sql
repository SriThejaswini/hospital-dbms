DROP TABLE IF EXISTS department_specialization;

CREATE TABLE IF NOT EXISTS department_specialization (
  specialization_id int NOT NULL PRIMARY KEY,
  specialization_name TEXT default NULL,
  department_id int NOT NULL references department(department_id)
);
