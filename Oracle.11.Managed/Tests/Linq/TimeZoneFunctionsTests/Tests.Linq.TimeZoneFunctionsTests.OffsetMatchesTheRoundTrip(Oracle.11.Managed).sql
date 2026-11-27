-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto")
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

