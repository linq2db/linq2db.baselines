-- DuckDB
SELECT
	r.Dto
FROM
	StampRow r
LIMIT 2

-- DuckDB
SELECT
	r.Dto + 1 * Interval '1 Day'
FROM
	StampRow r
LIMIT 2

