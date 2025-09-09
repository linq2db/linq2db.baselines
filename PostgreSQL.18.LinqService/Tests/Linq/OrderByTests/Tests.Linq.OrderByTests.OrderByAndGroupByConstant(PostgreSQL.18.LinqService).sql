BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	COUNT(*),
	1 + MIN(g_1."ChildID"),
	MAX(g_1."ChildID")
FROM
	"Child" g_1
LIMIT :take

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

