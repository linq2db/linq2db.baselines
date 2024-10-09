BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t1.Gender = 'F' THEN true
		ELSE false
	END,
	t1.PersonID,
	t1.Gender,
	t1.LastName,
	CASE
		WHEN t1.Gender = 'M' THEN true
		ELSE false
	END,
	t1.FirstName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.Gender = 'M' AND t1.PersonID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t1.Gender = 'F' THEN true
		ELSE false
	END,
	t1.PersonID,
	t1.Gender,
	t1.LastName,
	CASE
		WHEN t1.Gender = 'M' THEN true
		ELSE false
	END,
	t1.FirstName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.Gender = 'F' AND t1.PersonID = 3
LIMIT 1

