-- PostgreSQL.13 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	r."Value"
FROM
	"TakeSkipClass" r
LIMIT :take

