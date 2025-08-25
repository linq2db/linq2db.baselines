BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	SUM("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

