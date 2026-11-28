-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST((From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague') AT TIME ZONE 'UTC') AS timestamp(7))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

