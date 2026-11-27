-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dt"
FROM
	"DateRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(r."Dt" AS timestamp(7)), '-01:30') as "c1"
FROM
	"DateRow" r
FETCH NEXT 2 ROWS ONLY

