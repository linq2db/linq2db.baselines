-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	SUM(CASE
		WHEN t.CategoryId = 1 THEN t.IntValue
		ELSE NULL
	END) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

