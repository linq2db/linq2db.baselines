-- DuckDB
SELECT
	r.Id,
	CAST(NULL AS BOOLEAN)
FROM
	NullableFlagTable r

-- DuckDB
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1."C",
	t1.Flag
FROM
	NullableFlagTable t1

