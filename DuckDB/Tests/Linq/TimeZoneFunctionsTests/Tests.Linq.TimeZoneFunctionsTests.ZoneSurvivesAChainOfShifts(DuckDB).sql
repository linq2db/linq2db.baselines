-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'

SELECT
	EXTRACT(hour FROM ((r.Dto AT TIME ZONE $zone) + 10 * Interval '1 Day' + Interval '1 Month' + 1 * Interval '1 Hour'))
FROM
	ZonedRow r
LIMIT 2

