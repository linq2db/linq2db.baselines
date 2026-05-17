-- PostgreSQL.13 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID",
	(x."ChildID"::decimal % 2)::decimal

