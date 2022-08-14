BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.PersonID,
	_.Gender,
	_.FirstName,
	_.LastName
FROM
	Person _
WHERE
	_.PersonID = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.PersonID,
	_.Gender,
	_.FirstName,
	_.LastName
FROM
	Person _
WHERE
	_.PersonID = toInt32(3)
LIMIT toInt32(1)

