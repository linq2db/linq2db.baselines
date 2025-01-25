BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "t1"."ParentID" = "c_1"."ParentID"

