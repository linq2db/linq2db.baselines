-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '2000-02-03 04:05:06.007'::timestamp

SELECT
	t1."Value"
FROM
	(
		SELECT issue_1742_ts(:p) as "Value"
	) t1
LIMIT 2

