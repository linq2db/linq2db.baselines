-- PostgreSQL.15 PostgreSQL13

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	(ch."ChildID"::decimal % 2)::decimal DESC

