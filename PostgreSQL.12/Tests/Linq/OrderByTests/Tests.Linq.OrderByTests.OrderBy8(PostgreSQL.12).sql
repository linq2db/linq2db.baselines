-- PostgreSQL.12 PostgreSQL12
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID",
	Floor(x."ChildID"::decimal % 2)::Int

