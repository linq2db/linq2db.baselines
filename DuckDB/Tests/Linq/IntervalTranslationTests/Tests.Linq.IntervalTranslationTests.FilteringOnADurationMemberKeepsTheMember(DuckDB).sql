-- DuckDB
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > 1800
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Required > 1800
ORDER BY
	r.Id

