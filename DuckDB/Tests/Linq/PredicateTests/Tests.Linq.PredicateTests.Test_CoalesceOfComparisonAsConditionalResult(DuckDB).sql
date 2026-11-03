-- DuckDB
SELECT
	r.Id,
	CASE
		WHEN r."C" IS NULL THEN r.A = r.B OR r.A IS NULL AND r.B IS NULL
		ELSE r.Flag
	END
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

