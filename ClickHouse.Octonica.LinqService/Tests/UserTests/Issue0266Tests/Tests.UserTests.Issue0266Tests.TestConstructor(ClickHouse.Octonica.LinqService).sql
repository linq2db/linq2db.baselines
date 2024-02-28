BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.FirstName,
	_.PersonID,
	_.LastName,
	_.MiddleName,
	_.Gender
FROM
	Person _
WHERE
	_.PersonID = toInt32(1)
LIMIT toInt32(2)

