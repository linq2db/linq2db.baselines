BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Sum("ch"."ParentID")
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "pg" ON "ch"."ParentID" = "pg"."ParentID"
GROUP BY
	"ch"."ChildID"

