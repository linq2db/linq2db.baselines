BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Sum("ch"."ParentID")
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "pg" ON "ch"."ParentID" = "pg"."ParentID"
GROUP BY
	"ch"."ChildID"

