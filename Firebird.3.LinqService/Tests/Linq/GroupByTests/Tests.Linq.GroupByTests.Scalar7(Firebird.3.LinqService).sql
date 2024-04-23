BeforeExecute
-- Firebird.3 Firebird3

SELECT
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

