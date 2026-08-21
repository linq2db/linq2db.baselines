-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	COUNT(*) OVER () = 9 AND SUM(t.IntValue) OVER () > 0,
	COUNT(*) OVER () = 10 AND SUM(t.IntValue) OVER () > 0
FROM
	WindowFunctionTestEntity t

