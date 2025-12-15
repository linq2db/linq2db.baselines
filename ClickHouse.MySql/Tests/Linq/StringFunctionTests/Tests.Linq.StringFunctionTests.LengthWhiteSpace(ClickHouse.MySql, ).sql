-- ClickHouse.MySql ClickHouse

SELECT
	t.Str,
	lengthUTF8(t.Str)
FROM
	TestLengthModel t
LIMIT 2

