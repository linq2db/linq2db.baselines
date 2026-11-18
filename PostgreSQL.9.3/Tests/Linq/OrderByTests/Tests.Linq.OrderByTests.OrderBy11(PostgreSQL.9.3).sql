-- PostgreSQL.9.3 PostgreSQL
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	Floor(x."ChildID"::decimal % 2)::Int,
	x."ChildID" DESC

