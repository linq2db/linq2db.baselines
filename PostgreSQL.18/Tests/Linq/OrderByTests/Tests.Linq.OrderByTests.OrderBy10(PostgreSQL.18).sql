-- PostgreSQL.18 PostgreSQL12
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" DESC,
	Floor(x."ChildID"::decimal % 2)::Int

