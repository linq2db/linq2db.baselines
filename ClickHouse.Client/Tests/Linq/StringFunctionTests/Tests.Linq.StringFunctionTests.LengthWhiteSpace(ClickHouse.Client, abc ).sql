BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Str,
	lengthUTF8(t.Str)
FROM
	TestLengthModel t
LIMIT 2

