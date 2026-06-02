-- ClickHouse.MySql ClickHouse

SELECT
	x.Id
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Group ORDER BY e.Priority NULLS LAST, e.Id) as RowNumber,
			e.Priority as Priority,
			e.Id as Id,
			e.Group as Group_1
		FROM
			TestData e
	) x
WHERE
	x.RowNumber = toInt64(1)
ORDER BY
	x.Group_1 NULLS LAST,
	x.Priority NULLS LAST,
	x.Id

-- ClickHouse.MySql ClickHouse

SELECT
	x.Id
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Group ORDER BY e.Priority NULLS LAST, e.Id) as RowNumber,
			e.Priority as Priority,
			e.Id as Id,
			e.Group as Group_1
		FROM
			TestData e
	) x
WHERE
	x.RowNumber = toInt64(1)
ORDER BY
	x.Group_1 NULLS LAST,
	x.Priority NULLS LAST,
	x.Id

