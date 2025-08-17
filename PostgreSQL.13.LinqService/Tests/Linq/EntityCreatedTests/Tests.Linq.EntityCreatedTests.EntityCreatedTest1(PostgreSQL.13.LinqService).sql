BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
LIMIT :take

