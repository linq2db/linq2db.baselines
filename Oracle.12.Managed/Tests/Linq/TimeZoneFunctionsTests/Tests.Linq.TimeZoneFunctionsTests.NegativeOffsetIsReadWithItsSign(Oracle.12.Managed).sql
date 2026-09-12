-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000 as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

