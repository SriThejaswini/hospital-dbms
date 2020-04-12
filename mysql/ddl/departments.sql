DROP TABLE IF EXISTS department;

CREATE TABLE IF NOT EXISTS department (
  department_id int NOT NULL PRIMARY KEY,
  department_name varchar(255) default NULL
);
