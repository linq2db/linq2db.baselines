-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	(t1."ChildID"::decimal % 2)::decimal,
	t1."ChildID"

