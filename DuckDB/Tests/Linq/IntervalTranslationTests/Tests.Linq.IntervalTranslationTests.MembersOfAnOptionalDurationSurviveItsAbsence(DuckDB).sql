-- DuckDB
SELECT
	r.Id,
	CAST((r.Grace // 60) % 60 AS INTEGER),
	CAST(r.Grace AS DOUBLE) / 60,
	CAST(r.Required AS DOUBLE) / 60
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

