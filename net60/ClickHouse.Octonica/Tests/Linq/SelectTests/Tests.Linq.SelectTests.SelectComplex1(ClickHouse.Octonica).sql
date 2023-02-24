BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.PersonID,
	_.Gender,
	_.FirstName,
	_.MiddleName,
	_.LastName
FROM
	Person _
WHERE
	_.PersonID = toInt32(1)
LIMIT toInt32(1)

