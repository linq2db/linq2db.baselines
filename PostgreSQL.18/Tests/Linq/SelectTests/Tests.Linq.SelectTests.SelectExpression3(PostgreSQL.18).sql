-- PostgreSQL.18 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	True
FROM
	"SelectExpressionTable" t1
LIMIT :take

