BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Sum("t1"."ChildID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

