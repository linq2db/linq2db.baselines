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
	_.PersonID IN (toInt32(2), toInt32(3), toInt32(4))

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
	_.PersonID IN (toInt32(1), toInt32(3), toInt32(4))

