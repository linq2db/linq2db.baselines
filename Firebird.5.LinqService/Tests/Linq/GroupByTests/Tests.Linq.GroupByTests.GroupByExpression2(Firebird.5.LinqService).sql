BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"selectParam"."ChildID",
	Avg("selectParam"."ParentID")
FROM
	"Child" "selectParam"
GROUP BY
	"selectParam"."ChildID"

