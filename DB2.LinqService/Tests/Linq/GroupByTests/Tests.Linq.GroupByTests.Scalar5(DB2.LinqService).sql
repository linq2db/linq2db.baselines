BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	MAX("g_1"."ParentID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

