-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	(r."Dto" AT TIME ZONE 'UTC') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	(r."Dto" AT TIME ZONE '-01:30') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

