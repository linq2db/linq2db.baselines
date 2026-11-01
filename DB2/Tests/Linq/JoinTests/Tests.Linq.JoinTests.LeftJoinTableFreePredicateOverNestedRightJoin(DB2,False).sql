-- DB2 DB2.LUW DB2LUW
DECLARE @date Timestamp(20) -- DateTime
SET     @date = CAST('2000-01-01-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"p"."ParentID",
	"g_1"."GrandChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "x"
			RIGHT JOIN "GrandChild" "g_1" ON "g_1"."ChildID" = "x"."ChildID" OR "g_1"."ChildID" IS NULL AND "x"."ChildID" IS NULL
		ON "p"."ParentID" = "g_1"."ParentID" AND CURRENT_TIMESTAMP < @date

