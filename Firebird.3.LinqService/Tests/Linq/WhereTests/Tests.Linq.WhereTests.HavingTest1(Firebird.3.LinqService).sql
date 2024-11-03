BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"
HAVING
	COUNT(*) > 1

