BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"
HAVING
	COUNT(*) > 1

