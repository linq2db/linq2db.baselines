-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'

SELECT
	EXTRACT(hour FROM (r.Dto AT TIME ZONE $zone))
FROM
	ZonedRow r
LIMIT 2

-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'

SELECT
	EXTRACT(hour FROM (r.Dto AT TIME ZONE $zone))
FROM
	ZonedRow r
LIMIT 2

