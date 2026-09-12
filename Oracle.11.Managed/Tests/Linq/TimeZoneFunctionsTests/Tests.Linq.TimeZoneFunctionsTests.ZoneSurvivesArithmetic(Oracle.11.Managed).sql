-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(HOUR FROM (CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp) + 1D * INTERVAL '1' HOUR))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

