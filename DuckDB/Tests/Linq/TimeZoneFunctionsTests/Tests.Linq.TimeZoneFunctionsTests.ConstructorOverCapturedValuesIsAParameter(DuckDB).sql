-- DuckDB
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- DuckDB
DECLARE $p TIMESTAMPTZ -- DateTimeOffset
SET     $p = '2020-06-15 11:20:00+00'::TIMESTAMPTZ

SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	r.Dto = $p

