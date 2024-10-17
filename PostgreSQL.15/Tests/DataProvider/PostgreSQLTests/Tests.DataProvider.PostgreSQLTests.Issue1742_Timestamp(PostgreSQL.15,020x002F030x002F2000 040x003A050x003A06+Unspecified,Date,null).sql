BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p1 Date
SET     @p1 = '2000-02-03 04:05:06.007'::timestamp

SELECT
	t1."Value"
FROM
	(
		SELECT issue_1742_ts(:p1) as "Value"
	) t1
LIMIT 2

