-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	TO_CHAR(CAST(r."Dto" AS timestamp), 'HH24:MI:SS')
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

