--Find crime reports from January 15, 2018 in SQL City
SELECT *
FROM crime_scene_report
WHERE date = "20180115"
AND city = "SQL City"

--Find id and name of first witness on the last house of Northwestern Dr
SELECT id, name, address_number
FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC
LIMIT 1

--Find id and name of second witness Annabel who lives on Franklin Ave
SELECT id, name, address_number
FROM person
WHERE address_street_name = "Franklin Ave"
AND name LIKE "%Annabel%"

--Find interview description of first witness
SELECT *
FROM interview
WHERE person_id = "14887"

--Find gold members with ID starting with 48Z
SELECT *
FROM get_fit_now_member
WHERE id LIKE "%48Z%"
AND membership_status = "gold"

--Find license_id of members with person_id 28819 and 67318
SELECT *
FROM person
WHERE id = "67318"

SELECT *
FROM person
WHERE id = "28819"

--Find plate_number of person with licesnce_id 423327
SELECT *
FROM drivers_license
WHERE id = "423327"

--Find plate_number of person with licesnce_id 173289
SELECT *
FROM drivers_license
WHERE id = "173289"

--Find name of person with id 423327
SELECT id, name
FROM person
WHERE license_id = "423327"