-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.Id) as RowNumber,
			e.TestId as TestId,
			e.Id as Id
		FROM
			TestTable e
		WHERE
			e.TestId IN (
				SELECT DISTINCT
					x.TestId
				FROM
					TestTable x
				WHERE
					x.Id <= 2
			)
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.TestId,
	t1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.TestId
FROM
	TestTable t1

