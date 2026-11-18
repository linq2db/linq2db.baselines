-- DuckDB
SELECT
	r.Id,
	CAST(CAST(Floor(r.F) AS INTEGER) AS DOUBLE)
FROM
	DoubleValue r
ORDER BY
	r.Id

-- DuckDB
SELECT
	t1.Id,
	t1.F
FROM
	DoubleValue t1

