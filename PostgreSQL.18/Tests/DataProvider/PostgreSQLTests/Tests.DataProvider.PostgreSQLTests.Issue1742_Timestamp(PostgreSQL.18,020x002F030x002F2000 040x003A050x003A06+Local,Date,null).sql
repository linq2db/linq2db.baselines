BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Date
SET     @p = '2000-02-03 04:05:06.007'::timestamp

SELECT
	t1."Value"
FROM
	(
		SELECT issue_1742_ts(:p) as "Value"
	) t1
LIMIT 2

