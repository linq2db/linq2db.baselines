BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Timestamp -- DateTime
SET     @p1 = '2000-02-03 04:05:06.007'::timestamp
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	t1."Value"
FROM
	(
		SELECT issue_1742_ts(:p1) as "Value"
	) t1
LIMIT :take

