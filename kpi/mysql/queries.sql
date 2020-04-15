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
