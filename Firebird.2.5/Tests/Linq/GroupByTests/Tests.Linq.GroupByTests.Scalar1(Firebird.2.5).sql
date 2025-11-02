-- Firebird.2.5 Firebird

SELECT
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

