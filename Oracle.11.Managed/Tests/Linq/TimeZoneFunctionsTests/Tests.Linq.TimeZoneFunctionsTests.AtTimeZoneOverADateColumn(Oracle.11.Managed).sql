-- Oracle.11.Managed Oracle11
SELECT
	r."Dt"
FROM
	"DateRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	From_Tz(CAST(r."Dt" AS timestamp(7)), 'Europe/Prague'),
	From_Tz(CAST(r."Dt" + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char(From_Tz(CAST(r."Dt" AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')),
	From_Tz(CAST(CAST(Add_Months(r."Dt", 1) - GreatEst(EXTRACT(DAY FROM Add_Months(r."Dt", 1)) - EXTRACT(DAY FROM r."Dt"), 0) AS date) AS timestamp(7)), To_Char(From_Tz(CAST(r."Dt" AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM'))
FROM
	"DateRow" r
WHERE
	ROWNUM <= 2

