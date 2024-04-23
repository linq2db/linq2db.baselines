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
	_.Gender = 'M' AND _.PersonID = 1
LIMIT 1

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
	_.Gender = 'F' AND _.PersonID = 3
LIMIT 1

