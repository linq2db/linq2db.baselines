BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	y.FirstName
FROM
	Person y
UNION ALL
SELECT
	t1.Name
FROM
	(
		SELECT
			x.FirstName as Name
		FROM
			Person x,
			Patient z
		WHERE
			(x.FirstName = 'A' OR z.PersonID = toInt32(1))
	) t1

