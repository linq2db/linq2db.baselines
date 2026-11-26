-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @local TimeStamp -- DateTime
SET     @local = TIMESTAMP '2020-06-15 12:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" > From_Tz(CAST(:local AS timestamp(7)), 'Europe/Prague')

