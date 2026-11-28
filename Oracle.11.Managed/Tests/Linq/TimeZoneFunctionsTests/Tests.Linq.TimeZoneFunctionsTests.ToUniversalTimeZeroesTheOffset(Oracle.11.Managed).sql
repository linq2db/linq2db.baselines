-- Oracle.11.Managed Oracle11
SELECT
	(r."Dto" AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

