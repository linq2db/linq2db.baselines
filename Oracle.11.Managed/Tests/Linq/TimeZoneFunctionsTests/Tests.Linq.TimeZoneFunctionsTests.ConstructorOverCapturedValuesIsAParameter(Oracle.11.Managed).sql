-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @p TimeStampTZ -- DateTimeOffset
SET     @p = 06/15/2020 12:00:00 +00:40

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" = :p

