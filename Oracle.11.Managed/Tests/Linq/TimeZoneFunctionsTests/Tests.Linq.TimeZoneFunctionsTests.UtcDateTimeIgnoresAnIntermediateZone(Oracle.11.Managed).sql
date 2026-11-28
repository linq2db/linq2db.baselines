-- Oracle.11.Managed Oracle11
SELECT
	CAST((r."Dto" AT TIME ZONE 'UTC') AS timestamp(7))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

