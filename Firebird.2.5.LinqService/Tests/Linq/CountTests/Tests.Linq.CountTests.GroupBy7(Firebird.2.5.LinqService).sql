BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*),
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

