-- Oracle.11.Managed Oracle11
SELECT
	r."Dt"
FROM
	"DateRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	From_Tz(CAST(r."Dt" AS timestamp(7)), '-01:30')
FROM
	"DateRow" r
WHERE
	ROWNUM <= 2

