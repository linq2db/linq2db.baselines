-- DuckDB
DECLARE $local TIMESTAMP -- DateTime2
SET     $local = '2020-06-15 12:00:00.000000'::TIMESTAMP
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'

SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	r.Dto > (CAST($local AS TIMESTAMP) AT TIME ZONE $zone)

