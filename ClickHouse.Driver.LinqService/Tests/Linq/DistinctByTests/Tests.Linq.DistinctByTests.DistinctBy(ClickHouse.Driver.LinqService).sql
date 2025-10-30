BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Name,
	t1.Group_1,
	t1.Date_1,
	t1.Amount,
	t1.IsActive
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Id, e.Name ORDER BY e.Name, e.Date DESC) as RowNumber,
			e.Name as Name,
			e.Date as Date_1,
			e.Id as Id,
			e.Group as Group_1,
			e.Amount as Amount,
			e.IsActive as IsActive
		FROM
			TestData e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Name,
	t1.Date_1 DESC

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Name,
	t1.Group,
	t1.Date,
	t1.Amount,
	t1.IsActive
FROM
	TestData t1

