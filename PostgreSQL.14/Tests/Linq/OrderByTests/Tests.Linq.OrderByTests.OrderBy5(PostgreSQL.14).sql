BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	Cast(Floor(Cast(t1."ChildID" as decimal) % 2) as Int),
	t1."ChildID"

