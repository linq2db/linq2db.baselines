-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t1."ChildID",
	AVG(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

