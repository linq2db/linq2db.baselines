-- YDB Ydb
SELECT DISTINCT
	u.city as city,
	u.street as street,
	u.building_number as building_number
FROM
	`User` u
LIMIT 2

