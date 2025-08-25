BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		CROSS JOIN "Child" "ch"

