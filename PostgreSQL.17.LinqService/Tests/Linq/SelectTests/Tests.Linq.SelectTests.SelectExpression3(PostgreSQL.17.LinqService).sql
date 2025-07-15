BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	True
FROM
	"SelectExpressionTable" t1
LIMIT :take

