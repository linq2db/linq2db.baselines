-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	FIRST_VALUE(t.IntValue) RESPECT NULLS OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

