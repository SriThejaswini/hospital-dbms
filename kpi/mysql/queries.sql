#count of people with insurance
select count(*) as insurance_count from patient where insurance_covered=true;

#company with no of users
select insurance_name,count(*) from patient where insurance_covered=true group by insurance_name;

#pharamcy ordered by preference
select p.pharmacy_name,count(*) as preferred from pharmacy p,purchases pu
where p.pharmacy_id=pu.pharmacy_id group by pu.pharmacy_id
order by preferred desc;

#to get fees earned by doctor
select d.doctor_ID,d.first_name,de.department_name,sum(fee) as fees_doctor from appointment a,doctor d,department de
where a.doctor_id=d.doctor_id
and d.department_id = de.department_id
group by doctor_ID 
order by sum(fee) desc;

#patients per gender
select gender,count(*) from patient group by gender;

#patients for doctor with id 15
select p.patient_id,p.first_name,p.last_name from treats t,patient p
where p.patient_id = t.patient_id
and t.doctor_id=15;

#doctors and no of patients they treat
select t.doctor_id,d.first_name,d.last_name,count(*) as no_of_patients from doctor d, treats t
where d.doctor_id = t.doctor_id
group by t.doctor_id
order by no_of_patients desc;

#Common symptoms among patients
WITH recursive numbers AS (
    select 1 as num
   union all
   select num + 1
   from numbers
   where num < 1000)
select case when length(symptoms)>0 then symptoms else 'Symptoms Unknown' end as symptoms , count(1) from ( 
  select 
    patient_id, 
    substring_index(
      substring_index(replace(current_condition,' ', ''),',', num), 
      ',', 
      -1
    ) as symptoms
  from patient
  join numbers
    on char_length(current_condition) 
      - char_length(replace(current_condition, ',', '')) 
      >= num - 1
) by_symptoms
group by 1
order by 2 desc;

#How many donors per blood group
select blood_group, count(*)
from blood_donor
group by blood_group
order by count(*) desc;
