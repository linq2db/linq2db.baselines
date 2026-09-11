-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.CategoryId,
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY (
		SELECT
			1
	) RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	WindowFunctionTestEntity t

