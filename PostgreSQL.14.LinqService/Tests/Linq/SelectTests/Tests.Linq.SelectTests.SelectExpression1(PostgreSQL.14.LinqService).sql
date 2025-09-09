BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	True
FROM
	"SelectExpressionTable" t1
LIMIT :take

