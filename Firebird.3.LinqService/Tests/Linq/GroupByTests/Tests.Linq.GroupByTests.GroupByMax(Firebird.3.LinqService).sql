BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Max("t1"."ParentID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ChildID"

