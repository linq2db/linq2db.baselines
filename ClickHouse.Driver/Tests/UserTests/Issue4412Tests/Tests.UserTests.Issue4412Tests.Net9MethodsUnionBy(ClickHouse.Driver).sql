-- ClickHouse.Driver ClickHouse

SELECT
	x_3.Id,
	x_3.TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY x_2.TestId ORDER BY x_2.SourceIndex, x_2.TestId) as RowNumber,
			x_2.Id as Id,
			x_2.TestId as TestId
		FROM
			(
				SELECT
					x.Id as Id,
					x.TestId as TestId,
					toInt32(0) as SourceIndex
				FROM
					TestTable x
				UNION ALL
				SELECT
					x_1.Id as Id,
					x_1.TestId as TestId,
					toInt32(1) as SourceIndex
				FROM
					TestTable x_1
			) x_2
	) x_3
WHERE
	x_3.RowNumber = toInt64(1)

