BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Max("t1"."ParentID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ChildID"

