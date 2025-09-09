BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"
HAVING
	COUNT(*) > 1

