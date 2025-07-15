BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
		INNER JOIN "GrandChild" "g_1" ON "t"."ParentID" = "g_1"."ParentID"
WHERE
	"g_1"."ChildID" > 22
ORDER BY
	"g_1"."ParentID"

