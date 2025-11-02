-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ChildID",
	AVG(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

