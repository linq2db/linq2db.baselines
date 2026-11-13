-- ClickHouse.MySql ClickHouse
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Length_1 ORDER BY concat(e.Key_1, 'x') DESC)) as RowNumber,
			concat(e.Key_1, 'x') as c1,
			e.Key_1 as Key_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.FirstName as Key_1,
					lengthUTF8(g_1.FirstName) as Length_1
				FROM
					Person g_1
			) e
		GROUP BY
			e.Key_1,
			e.Length_1
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.c1 DESC

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

