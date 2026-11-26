-- PostgreSQL.11 PostgreSQL
DECLARE @local Timestamp -- DateTime2
SET     @local = '2020-06-15 12:00:00'::timestamp

SELECT
	Floor(Extract(hour From :local))::Int
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.11 PostgreSQL
DECLARE @local Timestamp -- DateTime2
SET     @local = '2020-06-15 12:00:00'::timestamp
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	(((:local + 6 * Interval '1 Month') - (((:local AT TIME ZONE :zone) AT TIME ZONE :zone) - ((:local AT TIME ZONE :zone) AT TIME ZONE 'UTC'))) AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.11 PostgreSQL
DECLARE @local Timestamp -- DateTime2
SET     @local = '2020-06-15 12:00:00'::timestamp
DECLARE @months Integer -- Int32
SET     @months = 6
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	(((:local + :months * Interval '1 Month') - (((:local AT TIME ZONE :zone) AT TIME ZONE :zone) - ((:local AT TIME ZONE :zone) AT TIME ZONE 'UTC'))) AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

