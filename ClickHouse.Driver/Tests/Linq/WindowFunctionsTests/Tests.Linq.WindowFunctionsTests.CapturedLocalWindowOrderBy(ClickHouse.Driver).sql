-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	toInt64(ROW_NUMBER() OVER ())
FROM
	WindowFunctionTestEntity t

