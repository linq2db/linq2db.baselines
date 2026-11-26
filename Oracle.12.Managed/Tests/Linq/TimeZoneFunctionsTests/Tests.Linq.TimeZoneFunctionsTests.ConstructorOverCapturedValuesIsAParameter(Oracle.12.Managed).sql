-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p TimeStampTZ -- DateTimeOffset
SET     @p = 06/15/2020 12:00:00 +00:40

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" = :p

