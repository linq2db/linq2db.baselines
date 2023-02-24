BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	(
		SELECT
			p.FirstName as FirstName,
			p.PersonID as ID,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender
		FROM
			Person p
		LIMIT toInt32(2)
	) t1
UNION ALL
SELECT
	t2.FirstName,
	t2.PersonID,
	t2.LastName,
	t2.MiddleName,
	t2.Gender
FROM
	Person t2

