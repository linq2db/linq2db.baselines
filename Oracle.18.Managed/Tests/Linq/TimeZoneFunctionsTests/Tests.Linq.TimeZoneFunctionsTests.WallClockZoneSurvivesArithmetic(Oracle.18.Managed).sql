-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(r."Dto" AS timestamp) + 1D * INTERVAL '1' DAY, 'Europe/Prague') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

