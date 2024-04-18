BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID" + 1
FROM
	"Parent" "cp"
		INNER JOIN "Child" "t1" ON "cp"."ParentID" = "t1"."ParentID" + 1

