-- YDB Ydb

SELECT DISTINCT
	u.city as city,
	u.street as street,
	u.building_number as building_number
FROM
	UserStruct u
LIMIT 2

