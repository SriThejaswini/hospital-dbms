DROP TABLE IF EXISTS assistant;

CREATE TABLE IF NOT EXISTS assistant (
  assistant_id int NOT NULL PRIMARY KEY,
  first_name varchar(255) default NULL,
  last_name varchar(255) default NULL,
  shift_hour_from varchar(255),
  shift_hour_to varchar(255),
  doctor_id int default NULL references doctor(doctor_id)
);
