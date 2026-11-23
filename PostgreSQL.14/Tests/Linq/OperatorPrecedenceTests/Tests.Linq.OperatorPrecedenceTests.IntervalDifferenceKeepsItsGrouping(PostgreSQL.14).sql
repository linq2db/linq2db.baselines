-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @start Timestamp -- DateTime2
SET     @start = '2020-01-01'::date
DECLARE @end Timestamp -- DateTime2
SET     @end = '2020-01-11'::date

SELECT
	:start + r."A" * Interval '1 Day' + (:end + r."B" * Interval '1 Day' - :start)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @start Timestamp -- DateTime2
SET     @start = '2020-01-01'::date
DECLARE @end Timestamp -- DateTime2
SET     @end = '2020-01-11'::date

SELECT
	:start + r."A" * Interval '1 Day' + (:end + r."B" * Interval '1 Day' - (:start + r."C" * Interval '1 Day'))
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

