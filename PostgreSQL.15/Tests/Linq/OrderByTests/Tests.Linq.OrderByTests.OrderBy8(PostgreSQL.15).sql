-- PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID",
	(x."ChildID"::decimal % 2)::decimal

