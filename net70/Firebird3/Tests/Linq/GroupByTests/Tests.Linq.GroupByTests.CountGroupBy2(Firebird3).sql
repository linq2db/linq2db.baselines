BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "p" ON "c_1"."ParentID" = "p"."ParentID"

