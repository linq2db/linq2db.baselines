-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST(r."Dto" AS timestamp(7))) as "MemberHour",
	EXTRACT(HOUR FROM CAST(r."Dto" AS timestamp(7))) as "SqlHour",
	From_Tz(CAST(CAST(Add_Months(CAST(r."Dto" AS timestamp(7)), 1) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST(r."Dto" AS timestamp(7)), 1)) - EXTRACT(DAY FROM CAST(r."Dto" AS timestamp(7))), 0) AS timestamp(7)) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7))), 1), 'SECOND') AS timestamp(7)), To_Char(r."Dto", 'TZH:TZM')) as "MemberShift",
	From_Tz(CAST(CAST(Add_Months(CAST(r."Dto" AS timestamp(7)), 1) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST(r."Dto" AS timestamp(7)), 1)) - EXTRACT(DAY FROM CAST(r."Dto" AS timestamp(7))), 0) AS timestamp(7)) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7))), 1), 'SECOND') AS timestamp(7)), To_Char(r."Dto", 'TZH:TZM')) as "SqlShift"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

