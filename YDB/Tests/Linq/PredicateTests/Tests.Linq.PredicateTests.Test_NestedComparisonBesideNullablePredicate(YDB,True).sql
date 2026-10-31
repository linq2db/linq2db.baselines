-- YDB Ydb
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 > r.Value5 AND r.Value4 IS NOT NULL AND r.Value5 IS NOT NULL) = ((r.Value2 = r.Value5))

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

