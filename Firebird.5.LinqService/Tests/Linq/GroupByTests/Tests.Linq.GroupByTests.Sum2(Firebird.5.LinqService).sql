BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	SUM("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

