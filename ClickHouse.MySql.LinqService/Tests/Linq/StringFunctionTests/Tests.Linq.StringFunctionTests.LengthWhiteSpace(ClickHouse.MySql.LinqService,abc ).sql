BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.Str,
	lengthUTF8(t.Str)
FROM
	TestLengthModel t
LIMIT 2

