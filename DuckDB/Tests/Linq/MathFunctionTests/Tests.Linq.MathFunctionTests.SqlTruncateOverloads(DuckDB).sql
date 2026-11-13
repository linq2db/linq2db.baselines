-- DuckDB
SELECT
	r.Id,
	Trunc(r.D),
	Trunc(r.F),
	Trunc(r.N),
	Trunc(r."G"),
	Trunc(r.D),
	Trunc(r.F)
FROM
	TruncateValues r
ORDER BY
	r.Id

-- DuckDB
SELECT
	t1.Id,
	t1.D,
	t1.F,
	t1.N,
	t1."G"
FROM
	TruncateValues t1

