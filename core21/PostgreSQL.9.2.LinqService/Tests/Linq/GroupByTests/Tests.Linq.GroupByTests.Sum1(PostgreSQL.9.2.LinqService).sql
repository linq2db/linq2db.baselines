BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Sum(t1."ChildID")
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

