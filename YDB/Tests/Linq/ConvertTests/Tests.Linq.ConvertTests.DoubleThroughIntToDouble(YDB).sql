-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double)) as Truncated
FROM
	DoubleValue r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.F as F
FROM
	DoubleValue t1

