-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	RANK() OVER ()
FROM
	WindowFunctionTestEntity t

