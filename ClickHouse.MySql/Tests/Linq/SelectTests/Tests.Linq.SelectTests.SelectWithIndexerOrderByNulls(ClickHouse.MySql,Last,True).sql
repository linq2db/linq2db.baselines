-- ClickHouse.MySql ClickHouse

SELECT
	x.ID,
	x.Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY p.MiddleName DESC, p.PersonID) - toInt64(1) as Index_1,
			p.PersonID as ID,
			p.MiddleName as MiddleName
		FROM
			Person p
	) x
WHERE
	x.Index_1 >= toInt64(0)
ORDER BY
	x.MiddleName DESC,
	x.ID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

