--Find interview transcript of person_id 67318
SELECT *
FROM interview
WHERE person_id = "67318"

--Find name of person with red hair, drives a Tesla and attended the SQL Symphony Concert
SELECT drivers_license.id,
person.name,
facebook_event_checkin.event_name
FROM drivers_license
JOIN person
ON person.license_id = drivers_license.id
JOIN facebook_event_checkin
ON facebook_event_checkin.person_id = person.id
WHERE drivers_license.hair_color = "red"
AND drivers_license.gender = "female"
AND drivers_license.car_make = "Tesla"