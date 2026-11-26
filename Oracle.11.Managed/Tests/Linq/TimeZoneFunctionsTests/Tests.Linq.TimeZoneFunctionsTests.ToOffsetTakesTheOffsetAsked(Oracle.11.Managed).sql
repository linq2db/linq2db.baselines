-- Oracle.11.Managed Oracle11
SELECT
	(r."Dto" AT TIME ZONE '-01:30')
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

