BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	MAX("g_1"."ParentID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

