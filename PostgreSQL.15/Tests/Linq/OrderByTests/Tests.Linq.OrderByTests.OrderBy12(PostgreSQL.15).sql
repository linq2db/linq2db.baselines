-- PostgreSQL.15 PostgreSQL12
SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	(ch."ChildID"::decimal % 2)::decimal DESC

