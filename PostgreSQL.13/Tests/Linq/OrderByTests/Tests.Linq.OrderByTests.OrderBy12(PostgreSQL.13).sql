-- PostgreSQL.13 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	(ch."ChildID"::decimal % 2)::decimal DESC

