-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	(x."ChildID"::decimal % 2)::decimal,
	x."ChildID" DESC

