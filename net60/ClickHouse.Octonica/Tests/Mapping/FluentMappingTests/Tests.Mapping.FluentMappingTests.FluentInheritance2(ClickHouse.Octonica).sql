BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Gender,
	_.PersonID,
	_.FirstName
FROM
	Person _
WHERE
	_.Gender = 'M' AND _.PersonID = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Gender,
	_.PersonID,
	_.LastName,
	_.FirstName
FROM
	Person _
WHERE
	_.Gender = 'F' AND _.PersonID = toInt32(3)
LIMIT toInt32(1)

