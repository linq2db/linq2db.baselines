BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "y" ON "x"."ParentID" = "y"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "y" ON "x"."ParentID" = "y"."ParentID"
GROUP BY
	"x"."ParentID"

