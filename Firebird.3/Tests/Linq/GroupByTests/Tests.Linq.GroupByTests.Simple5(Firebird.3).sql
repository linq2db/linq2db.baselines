-- Firebird.3 Firebird3

SELECT DISTINCT
	"g_1"."ParentID"
FROM
	"GrandChild" "g_1"
GROUP BY
	"g_1"."ParentID",
	"g_1"."ChildID"

