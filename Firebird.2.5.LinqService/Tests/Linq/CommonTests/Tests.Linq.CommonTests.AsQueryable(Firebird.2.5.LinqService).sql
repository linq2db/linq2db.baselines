BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		CROSS JOIN "Child" "ch"

