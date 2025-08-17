BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
LIMIT :take

