-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"

