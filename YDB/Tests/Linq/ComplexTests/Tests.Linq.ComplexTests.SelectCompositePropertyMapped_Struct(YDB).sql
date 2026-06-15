-- YDB Ydb

SELECT DISTINCT
	u.city as City,
	u.street as Street,
	u.building_number as Building
FROM
	UserStruct u
LIMIT 2

