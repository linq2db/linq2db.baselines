BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID,
	t1.Gender,
	t1.FirstName
FROM
	Person t1
WHERE
	t1.Gender = 'M' AND t1.PersonID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.Gender = 'F' AND t1.PersonID = 3
LIMIT 1

