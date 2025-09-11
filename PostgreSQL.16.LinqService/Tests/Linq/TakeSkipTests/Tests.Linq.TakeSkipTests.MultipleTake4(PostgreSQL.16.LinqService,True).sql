BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Id",
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
LIMIT :take

