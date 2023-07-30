BeforeExecute
-- Firebird3 Firebird

SELECT
	Avg("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0

