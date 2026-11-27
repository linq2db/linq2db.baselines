-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(HOUR FROM CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7)))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(HOUR FROM CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7)))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

