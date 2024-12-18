BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON 1=1
WHERE
	"p"."ParentID" = "ch"."ParentID" AND "ch"."ParentID" IS NOT NULL

