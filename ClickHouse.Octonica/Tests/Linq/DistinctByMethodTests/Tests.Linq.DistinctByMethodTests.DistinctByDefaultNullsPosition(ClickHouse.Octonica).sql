-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Group ORDER BY e.Priority, e.Id)) as RowNumber,
			e.Group as Group_1,
			e.Priority as Priority,
			e.Id as Id
		FROM
			TestData e
	) x
WHERE
	x.RowNumber = toInt64(1)
ORDER BY
	x.Group_1,
	x.Priority,
	x.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Group ORDER BY e.Priority, e.Id)) as RowNumber,
			e.Group as Group_1,
			e.Priority as Priority,
			e.Id as Id
		FROM
			TestData e
	) x
WHERE
	x.RowNumber = toInt64(1)
ORDER BY
	x.Group_1,
	x.Priority,
	x.Id

