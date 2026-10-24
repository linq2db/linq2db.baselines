-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	toInt64(ROW_NUMBER() OVER ()),
	COUNT(*) OVER () = 9 AND SUM(t.IntValue) OVER () > 0,
	COUNT(*) OVER () = 10 AND SUM(t.IntValue) OVER () > 0
FROM
	WindowFunctionTestEntity t

