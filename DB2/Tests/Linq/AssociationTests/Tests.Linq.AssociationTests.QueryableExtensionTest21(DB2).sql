-- DB2 DB2.LUW DB2LUW

SELECT
	"a_QueryableParent"."ParentID",
	"a_QueryableParent"."Value1"
FROM
	"Child" "t1"
		INNER JOIN "Parent" "a_QueryableParent" ON "t1"."ParentID" = "a_QueryableParent"."ParentID"

