-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	TRUNC(CAST(r."Dto" AS timestamp(7))),
	TO_CHAR(CAST(r."Dto" AS timestamp(7)), 'HH24:MI:SS')
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

