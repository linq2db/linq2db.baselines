-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	RANK() OVER ()
FROM
	WindowFunctionTestEntity t

