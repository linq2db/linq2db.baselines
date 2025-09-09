BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*),
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

