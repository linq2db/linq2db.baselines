BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	SUM("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

