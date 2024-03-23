BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	Cast(Floor(Cast(x."ChildID" as decimal) % 2) as Int),
	x."ChildID"

