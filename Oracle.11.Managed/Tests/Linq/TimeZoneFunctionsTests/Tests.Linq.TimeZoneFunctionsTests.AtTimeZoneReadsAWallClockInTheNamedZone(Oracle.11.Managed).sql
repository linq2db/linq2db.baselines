-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	From_Tz(CAST(r."Dto" AS timestamp), 'Europe/Prague')
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

