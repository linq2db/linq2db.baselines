BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	Cast(Floor(Cast(ch."ChildID" as decimal) % 2) as Int) DESC

