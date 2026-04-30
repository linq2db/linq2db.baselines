-- ClickHouse.Driver ClickHouse

SELECT
	e_1.Id,
	e_1.Name,
	e_1.Group_1,
	e_1.Date_1,
	e_1.Amount,
	e_1.IsActive
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Id, e.Name ORDER BY e.Name, e.Date DESC)) as RowNumber,
			e.Id as Id,
			e.Name as Name,
			e.Group as Group_1,
			e.Date as Date_1,
			e.Amount as Amount,
			e.IsActive as IsActive
		FROM
			TestData e
	) e_1
WHERE
	e_1.RowNumber = toInt64(1)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Group,
	t1.Date,
	t1.Amount,
	t1.IsActive
FROM
	TestData t1

