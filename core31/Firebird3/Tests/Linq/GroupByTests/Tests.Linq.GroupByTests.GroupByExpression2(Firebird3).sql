BeforeExecute
-- Firebird3 Firebird

SELECT
	"selectParam"."ChildID",
	Avg("selectParam"."ParentID")
FROM
	"Child" "selectParam"
GROUP BY
	"selectParam"."ChildID"

