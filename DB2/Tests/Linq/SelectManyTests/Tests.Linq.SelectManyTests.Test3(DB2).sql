BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Parent" "t1",
	"Person" "t"
		INNER JOIN "GrandChild" "g_1" ON "t1"."ParentID" = "g_1"."ParentID"

