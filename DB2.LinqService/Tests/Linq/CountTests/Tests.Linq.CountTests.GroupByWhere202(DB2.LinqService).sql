BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"g_1"."ParentID"
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"
HAVING
	COUNT(CASE
		WHEN "g_1"."ChildID" > 20 THEN 1
		ELSE NULL
	END) > 2 OR
	COUNT(CASE
		WHEN "g_1"."ChildID" = 20 THEN 1
		ELSE NULL
	END) > 2

