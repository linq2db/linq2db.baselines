-- PostgreSQL.9.5 PostgreSQL
SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	Floor(ch."ChildID"::decimal % 2)::Int DESC

