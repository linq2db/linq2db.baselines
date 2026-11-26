-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	(r."Dto" AT TIME ZONE '-01:30') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

