BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID" + 1
FROM
	"Parent" "p"
		CROSS JOIN "Child" "t1"

