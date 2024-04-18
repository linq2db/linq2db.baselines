BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"

