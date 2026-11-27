-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000 AS Float) / 600000000D as "Minutes",
	-(CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000) as "Negated"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 12000000000
DECLARE @Ticks_1 Int64
SET     @Ticks_1 = 36000000000

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	CAST(CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000 + :Ticks AS Number(19)) = :Ticks_1

