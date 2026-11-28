-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char(From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

