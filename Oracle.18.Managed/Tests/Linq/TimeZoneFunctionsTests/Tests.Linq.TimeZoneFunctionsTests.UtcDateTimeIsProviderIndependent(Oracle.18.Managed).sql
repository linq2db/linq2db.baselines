-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST((r."Dto" AT TIME ZONE 'UTC') AS timestamp) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

