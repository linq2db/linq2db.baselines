-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST((r."Dto" AT TIME ZONE '-01:30') AS timestamp)) as "Hour_1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

