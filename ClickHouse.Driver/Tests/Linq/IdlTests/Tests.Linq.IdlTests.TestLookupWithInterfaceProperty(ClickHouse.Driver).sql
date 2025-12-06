-- ClickHouse.Driver ClickHouse

SELECT
	obj.PersonID,
	obj.FirstName,
	obj.LastName,
	obj.MiddleName,
	obj.Gender
FROM
	Person obj
WHERE
	obj.PersonID = 1
LIMIT 2

