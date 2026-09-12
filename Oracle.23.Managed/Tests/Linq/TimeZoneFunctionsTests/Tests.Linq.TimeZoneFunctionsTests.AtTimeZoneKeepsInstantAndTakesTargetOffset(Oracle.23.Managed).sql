-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	(r."Dto" AT TIME ZONE 'Europe/Prague') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

