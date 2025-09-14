BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	r."Value"
FROM
	"TakeSkipClass" r
LIMIT :take

