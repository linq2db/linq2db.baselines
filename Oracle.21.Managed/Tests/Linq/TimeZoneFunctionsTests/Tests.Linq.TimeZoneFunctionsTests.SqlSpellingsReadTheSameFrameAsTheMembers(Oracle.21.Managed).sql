-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST(r."Dto" AS timestamp)) as "MemberHour",
	EXTRACT(HOUR FROM CAST(r."Dto" AS timestamp)) as "SqlHour",
	From_Tz(CAST(Add_Months(CAST(r."Dto" AS timestamp), 1) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST(r."Dto" AS timestamp), 1)) - EXTRACT(DAY FROM CAST(r."Dto" AS timestamp)), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST(r."Dto" AS timestamp) AS timestamp)), 1), 'SECOND'), To_Char(r."Dto", 'TZH:TZM')) as "MemberShift",
	From_Tz(CAST(Add_Months(CAST(r."Dto" AS timestamp), 1) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST(r."Dto" AS timestamp), 1)) - EXTRACT(DAY FROM CAST(r."Dto" AS timestamp)), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST(r."Dto" AS timestamp) AS timestamp)), 1), 'SECOND'), To_Char(r."Dto", 'TZH:TZM')) as "SqlShift"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

