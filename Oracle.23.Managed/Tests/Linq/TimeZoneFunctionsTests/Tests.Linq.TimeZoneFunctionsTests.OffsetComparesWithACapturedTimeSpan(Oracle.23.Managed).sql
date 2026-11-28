-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000 = :Ticks

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000 = 0

