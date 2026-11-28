-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(DAY FROM CAST(r."Dto" AS timestamp(7))),
	EXTRACT(MONTH FROM CAST(r."Dto" AS timestamp(7))),
	EXTRACT(YEAR FROM CAST(r."Dto" AS timestamp(7))),
	TO_NUMBER(TO_CHAR(CAST(r."Dto" AS timestamp(7)), 'DDD'))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

