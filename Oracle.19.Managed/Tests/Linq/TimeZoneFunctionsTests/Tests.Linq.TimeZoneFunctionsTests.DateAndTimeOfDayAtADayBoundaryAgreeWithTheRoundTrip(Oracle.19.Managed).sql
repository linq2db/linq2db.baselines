-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	TRUNC(CAST(r."Dto" AS timestamp(7))) as "Date_1",
	TO_CHAR(CAST(r."Dto" AS timestamp(7)), 'HH24:MI:SS') as "TimeOfDay"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

