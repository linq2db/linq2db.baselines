BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Sum("t1"."ChildID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

