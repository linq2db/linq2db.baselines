-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	t1."Value"
FROM
	"TakeSkipClass" t1
LIMIT :take

