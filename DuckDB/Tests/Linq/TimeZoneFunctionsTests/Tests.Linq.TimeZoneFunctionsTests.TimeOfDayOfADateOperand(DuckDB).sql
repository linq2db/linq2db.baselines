-- DuckDB
SELECT
	r.Dto
FROM
	DatedRow r
LIMIT 2

-- DuckDB
SELECT
	CAST(r.Dto AS TIME)
FROM
	DatedRow r
LIMIT 2

-- DuckDB
SELECT
	CAST(r.Dt AS TIME)
FROM
	DateRow r
LIMIT 2

