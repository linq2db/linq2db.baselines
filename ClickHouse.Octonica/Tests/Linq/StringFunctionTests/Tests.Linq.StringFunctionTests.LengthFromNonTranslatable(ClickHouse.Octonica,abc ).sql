-- ClickHouse.Octonica ClickHouse

SELECT
	t.Str,
	lengthUTF8(t.Str),
	concat('original-', t.Str)
FROM
	TestLengthModel t

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Str
FROM
	TestLengthModel t1

