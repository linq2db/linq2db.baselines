-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"DatedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	TO_CHAR(CAST(r."Dto" AS timestamp(7)), 'HH24:MI:SS.FF7')
FROM
	"DatedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	TO_CHAR(CAST(r."Dt" AS timestamp(7)), 'HH24:MI:SS.FF7')
FROM
	"DateRow" r
WHERE
	ROWNUM <= 2

