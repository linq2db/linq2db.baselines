BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	obj.FirstName,
	obj.LastName,
	obj.MiddleName,
	obj.Gender,
	obj.PersonID
FROM
	Person obj
WHERE
	obj.PersonID = toInt32(1)
LIMIT toInt32(2)

