-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(CAST(Add_Months(CAST(r."Dto" AS timestamp(7)), 6) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST(r."Dto" AS timestamp(7)), 6)) - EXTRACT(DAY FROM CAST(r."Dto" AS timestamp(7))), 0) AS timestamp(7)) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7))), 1), 'SECOND') AS timestamp(7)), To_Char(From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

