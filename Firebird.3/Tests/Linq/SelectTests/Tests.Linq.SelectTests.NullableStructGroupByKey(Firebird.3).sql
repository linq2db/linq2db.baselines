-- Firebird.3 Firebird3
SELECT
	"g_1"."ParentID",
	"g_1"."Value1",
	COUNT(*)
FROM
	"Parent" "g_1"
GROUP BY
	"g_1"."ParentID",
	"g_1"."Value1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

