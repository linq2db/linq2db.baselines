-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @local Timestamp -- DateTime2
SET     @local = '2020-06-15 12:00:00'::timestamp
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" > (:local AT TIME ZONE :zone)

