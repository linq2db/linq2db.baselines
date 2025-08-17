BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		CROSS JOIN "Child" "t1"

