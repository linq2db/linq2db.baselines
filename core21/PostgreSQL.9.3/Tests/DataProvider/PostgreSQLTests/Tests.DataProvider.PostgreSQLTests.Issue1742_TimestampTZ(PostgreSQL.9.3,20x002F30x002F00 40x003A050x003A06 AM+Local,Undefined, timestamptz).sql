BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p1 TimestampTz -- DateTimeOffset
SET     @p1 = '2000-02-03 04:05:06.007'::timestamp
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Value"
FROM
	(
		SELECT issue_1742_tstz(:p1) as "Value"
	) t1
LIMIT :take

