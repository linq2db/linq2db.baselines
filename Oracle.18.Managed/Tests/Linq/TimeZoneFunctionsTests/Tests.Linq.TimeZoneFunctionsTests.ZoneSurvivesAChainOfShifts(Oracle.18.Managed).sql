-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM (CAST(Add_Months(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp) + 10D * INTERVAL '1' DAY, 1) - GreatEst(EXTRACT(DAY FROM Add_Months(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp) + 10D * INTERVAL '1' DAY, 1)) - EXTRACT(DAY FROM (CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp) + 10D * INTERVAL '1' DAY)), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp) + 10D * INTERVAL '1' DAY AS timestamp)), 1), 'SECOND') + 1D * INTERVAL '1' HOUR)) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

