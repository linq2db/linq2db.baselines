-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	toBool(NULL)
FROM
	NullableFlagTable r

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.Flag
FROM
	NullableFlagTable t1

