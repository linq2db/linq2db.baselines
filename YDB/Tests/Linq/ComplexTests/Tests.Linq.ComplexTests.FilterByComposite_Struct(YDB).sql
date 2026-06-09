-- YDB Ydb

SELECT
	u.Id as Id,
	u.user_name as Name,
	u.city as City,
	u.street as Street,
	u.building_number as Building
FROM
	UserStruct u
WHERE
	u.city = 'Springwood'u AND u.street = 'Elm Street'u AND
	u.building_number = 13
LIMIT 2

