-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(day From (r."Dto" AT TIME ZONE 'UTC')))::Int,
	Floor(Extract(month From (r."Dto" AT TIME ZONE 'UTC')))::Int,
	Floor(Extract(year From (r."Dto" AT TIME ZONE 'UTC')))::Int,
	Floor(Extract(doy From (r."Dto" AT TIME ZONE 'UTC')))::Int
FROM
	"ZonedRow" r
LIMIT 2

