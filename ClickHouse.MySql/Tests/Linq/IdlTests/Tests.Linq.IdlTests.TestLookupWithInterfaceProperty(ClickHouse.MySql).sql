BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	obj.PersonID,
	obj.FirstName,
	obj.LastName,
	obj.MiddleName,
	obj.Gender
FROM
	Person obj
WHERE
	obj.PersonID = toInt32(1)
LIMIT toInt32(2)

