-- ClickHouse.MySql ClickHouse

SELECT
	y.item
FROM
	Person x
		CROSS JOIN VALUES(
			'item Nullable(FixedString(1))',
			('M'), ('F'), ('U'), ('O')
		) y

-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

