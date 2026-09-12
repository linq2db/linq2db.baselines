-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	TO_CHAR(CAST(r."Dto" AS timestamp), 'HH24:MI:SS') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

