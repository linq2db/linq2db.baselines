BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"g_1"."ParentID",
	"g_1"."ChildID"
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID",
	"g_1"."ChildID"

