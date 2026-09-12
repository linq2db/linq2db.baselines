-- DuckDB
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'

SELECT
	(((r.Dto AT TIME ZONE 'UTC') + 1 * Interval '1 Day') AT TIME ZONE $zone)
FROM
	ZonedRow r
LIMIT 2

