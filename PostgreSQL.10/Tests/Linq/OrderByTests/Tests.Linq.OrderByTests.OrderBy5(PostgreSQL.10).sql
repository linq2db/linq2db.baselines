-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	Floor(t1."ChildID"::decimal % 2)::Int,
	t1."ChildID"

