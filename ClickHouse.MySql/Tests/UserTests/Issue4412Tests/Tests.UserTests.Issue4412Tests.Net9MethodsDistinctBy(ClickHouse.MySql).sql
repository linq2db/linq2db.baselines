-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.Id) as RowNumber,
			e.Id as Id,
			e.TestId as TestId
		FROM
			TestTable e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Id

