BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"
HAVING
	COUNT(*) > 1

