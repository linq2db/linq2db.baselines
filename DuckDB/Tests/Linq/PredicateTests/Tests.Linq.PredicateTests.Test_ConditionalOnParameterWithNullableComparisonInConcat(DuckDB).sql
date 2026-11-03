-- DuckDB
SELECT
	r.Id,
	r.A = r.B OR r.A IS NULL AND r.B IS NULL
FROM
	NullableFlagTable r
UNION ALL
SELECT
	r_1.Id + 1000,
	r_1.Flag
FROM
	NullableFlagTable r_1

-- DuckDB
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1."C",
	t1.Flag
FROM
	NullableFlagTable t1

