-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Group_1,
	t1.Date_1,
	t1.Amount,
	t1.IsActive,
	t1.Priority
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Group ORDER BY e.Priority DESC NULLS FIRST, e.Id, e.Date) as RowNumber,
			e.Priority as Priority,
			e.Id as Id,
			e.Date as Date_1,
			e.Name as Name,
			e.Group as Group_1,
			e.Amount as Amount,
			e.IsActive as IsActive
		FROM
			TestData e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Priority DESC NULLS FIRST,
	t1.Id,
	t1.Date_1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Group,
	t1.Date,
	t1.Amount,
	t1.IsActive,
	t1.Priority
FROM
	TestData t1

