-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char(From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM'))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

