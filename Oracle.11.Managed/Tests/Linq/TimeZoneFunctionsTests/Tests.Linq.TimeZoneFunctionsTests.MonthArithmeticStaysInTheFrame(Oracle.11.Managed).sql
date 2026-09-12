-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	From_Tz(CAST(Add_Months(CAST(r."Dto" AS timestamp), 1) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST(r."Dto" AS timestamp), 1)) - EXTRACT(DAY FROM CAST(r."Dto" AS timestamp)), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST(r."Dto" AS timestamp) AS timestamp)), 1), 'SECOND'), To_Char(r."Dto", 'TZH:TZM'))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

