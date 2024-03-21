BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	Cast(Floor(Cast(ch."ChildID" as decimal) % 2) as Int) DESC

