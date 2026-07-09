-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	(ch."ChildID"::decimal % 2)::decimal DESC

