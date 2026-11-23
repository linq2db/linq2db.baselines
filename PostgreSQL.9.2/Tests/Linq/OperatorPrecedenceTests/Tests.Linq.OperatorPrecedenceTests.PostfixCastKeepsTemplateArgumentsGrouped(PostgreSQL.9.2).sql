-- PostgreSQL.9.2 PostgreSQL
DECLARE @start Timestamp -- DateTime2
SET     @start = '2020-06-15 12:00:00'::timestamp
DECLARE @end Timestamp -- DateTime2
SET     @end = '2023-06-15 12:00:00'::timestamp

SELECT
	(r."A" + r."B")::text,
	Lpad((r."A" + r."B")::text,5,'0'),
	DATE_PART('year', ((:end + r."C" * Interval '1 Day') AT TIME ZONE 'UTC')::date) - DATE_PART('year', :start::date),
	DATE_PART('year', :end::date) - DATE_PART('year', ((:start + r."C" * Interval '1 Day') AT TIME ZONE 'UTC')::date)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	(-5)::text
FROM
	"PrecedenceRow" r
LIMIT 1

