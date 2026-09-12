-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(HOUR FROM CAST(r."Dto" AS timestamp))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

