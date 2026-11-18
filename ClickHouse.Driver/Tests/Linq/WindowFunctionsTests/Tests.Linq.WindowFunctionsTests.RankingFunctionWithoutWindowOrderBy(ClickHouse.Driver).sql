-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.CategoryId,
	toInt64(ROW_NUMBER() OVER (PARTITION BY t.CategoryId))
FROM
	WindowFunctionTestEntity t

