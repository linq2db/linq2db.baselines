BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	(x."ChildID"::decimal % 2)::decimal,
	x."ChildID" DESC

