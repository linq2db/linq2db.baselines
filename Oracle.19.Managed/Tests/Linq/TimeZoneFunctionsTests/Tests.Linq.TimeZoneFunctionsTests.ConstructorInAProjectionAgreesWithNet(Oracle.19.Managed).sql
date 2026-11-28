-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), '+02:00') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

