-- PostgreSQL.13 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	True
FROM
	"SelectExpressionTable" t1
LIMIT :take

