BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"
WHERE
	"ch"."ParentID" IS NULL

