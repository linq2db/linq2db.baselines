-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."Dto" AS timestamp) as "DateTime"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST((r."Dto" AT TIME ZONE 'UTC') AS timestamp) as "UtcDateTime"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

