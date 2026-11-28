-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @instant TimeStampTZ -- DateTimeOffset
SET     @instant = 06/15/2020 09:00:00 +00:00

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" > (:instant AT TIME ZONE 'Europe/Prague')

