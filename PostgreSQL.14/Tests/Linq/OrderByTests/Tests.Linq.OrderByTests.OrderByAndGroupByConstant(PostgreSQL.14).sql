-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	COUNT(*),
	1 + MIN(g_1."ChildID"),
	MAX(g_1."ChildID")
FROM
	"Child" g_1
LIMIT :take

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

