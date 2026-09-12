-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp)) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp)) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

