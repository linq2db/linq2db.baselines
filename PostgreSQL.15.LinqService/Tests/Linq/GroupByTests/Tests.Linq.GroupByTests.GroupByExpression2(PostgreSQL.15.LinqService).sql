BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ChildID",
	AVG(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

