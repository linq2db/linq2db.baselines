-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	r."Value"
FROM
	"TakeSkipClass" r
LIMIT :take

