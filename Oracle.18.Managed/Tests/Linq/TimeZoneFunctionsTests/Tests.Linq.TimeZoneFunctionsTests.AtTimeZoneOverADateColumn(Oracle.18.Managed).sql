-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Dt"
FROM
	"DateRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(r."Dt" AS timestamp(7)), 'Europe/Prague') as "Zoned",
	From_Tz(CAST(r."Dt" + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char(From_Tz(CAST(r."Dt" AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')) as "Day_1",
	From_Tz(CAST(CAST(Add_Months(r."Dt", 1) - GreatEst(EXTRACT(DAY FROM Add_Months(r."Dt", 1)) - EXTRACT(DAY FROM r."Dt"), 0) AS date) AS timestamp(7)), To_Char(From_Tz(CAST(r."Dt" AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')) as "Month_1"
FROM
	"DateRow" r
FETCH NEXT 2 ROWS ONLY

