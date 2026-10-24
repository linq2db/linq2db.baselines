-- PostgreSQL.9.5 PostgreSQL
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	Floor(x."ChildID"::decimal % 2)::Int,
	x."ChildID" DESC

