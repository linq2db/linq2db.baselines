-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'
DECLARE $date TIMESTAMP -- DateTime2
SET     $date = '2020-06-15 00:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	CAST(CAST((r.Dto AT TIME ZONE $zone) AS DATE) AS TIMESTAMP) = $date

-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-06-15 01:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	CAST(CAST((r.Dto AT TIME ZONE $zone) AS DATE) AS TIMESTAMP) = $later

-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'
DECLARE $p TIMESTAMP -- DateTime2
SET     $p = '2020-06-16 00:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	CAST(CAST((r.Dto AT TIME ZONE $zone) + 1 * Interval '1 Day' AS DATE) AS TIMESTAMP) = $p

-- DuckDB
DECLARE $zone NVarChar(13) -- String
SET     $zone = 'Europe/Prague'
DECLARE $p TIMESTAMP -- DateTime2
SET     $p = '2020-06-16 01:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	CAST(CAST((r.Dto AT TIME ZONE $zone) + 1 * Interval '1 Day' AS DATE) AS TIMESTAMP) = $p

