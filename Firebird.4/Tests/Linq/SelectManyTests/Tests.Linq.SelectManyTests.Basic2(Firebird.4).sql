-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID" + 1
FROM
	"Parent" "p"
		CROSS JOIN "Child" "t1"

