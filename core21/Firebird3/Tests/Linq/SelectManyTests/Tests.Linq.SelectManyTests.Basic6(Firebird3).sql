BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ParentID" + 1
FROM
	"Parent" "cp"
		INNER JOIN "Child" "t1" ON "t1"."ParentID" + 1 > 1 AND "cp"."ParentID" = "t1"."ParentID"

