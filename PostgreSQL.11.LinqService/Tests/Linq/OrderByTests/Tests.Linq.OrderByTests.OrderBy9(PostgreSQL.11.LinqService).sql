BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	(x."ChildID"::decimal % 2)::decimal DESC,
	x."ChildID" DESC

