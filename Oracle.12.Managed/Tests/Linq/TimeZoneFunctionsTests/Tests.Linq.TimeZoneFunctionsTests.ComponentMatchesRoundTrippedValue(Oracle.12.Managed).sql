-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST(r."Dto" AS timestamp)) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

