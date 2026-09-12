-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(r."Dto" AS timestamp), '-01:30') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

