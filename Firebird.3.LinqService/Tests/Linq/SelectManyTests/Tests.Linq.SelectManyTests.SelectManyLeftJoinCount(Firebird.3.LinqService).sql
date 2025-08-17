BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "t1"."ParentID" = "c_1"."ParentID"

