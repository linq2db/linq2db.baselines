BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t2.FirstName,
	t2.ID,
	t2.LastName,
	t2.MiddleName,
	t2.Gender
FROM
	(
		SELECT
			t1.FirstName as FirstName,
			t1.PersonID as ID,
			t1.LastName as LastName,
			t1.MiddleName as MiddleName,
			t1.Gender as Gender
		FROM
			Person t1
		ORDER BY
			t1.LastName
		LIMIT 1
	) t2
UNION ALL
SELECT
	t4.FirstName as FirstName,
	t4.ID as ID,
	t4.LastName as LastName,
	t4.MiddleName as MiddleName,
	t4.Gender as Gender
FROM
	(
		SELECT
			t3.FirstName as FirstName,
			t3.PersonID as ID,
			t3.LastName as LastName,
			t3.MiddleName as MiddleName,
			t3.Gender as Gender
		FROM
			Person t3
		ORDER BY
			t3.LastName
		LIMIT 1
	) t4

