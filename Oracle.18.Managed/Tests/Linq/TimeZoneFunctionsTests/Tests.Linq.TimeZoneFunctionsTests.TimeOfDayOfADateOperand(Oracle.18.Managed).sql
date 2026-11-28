-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"DatedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	TO_CHAR(CAST(r."Dto" AS timestamp(7)), 'HH24:MI:SS.FF7') as "c1"
FROM
	"DatedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	TO_CHAR(CAST(r."Dt" AS timestamp(7)), 'HH24:MI:SS.FF7') as "c1"
FROM
	"DateRow" r
FETCH NEXT 2 ROWS ONLY

