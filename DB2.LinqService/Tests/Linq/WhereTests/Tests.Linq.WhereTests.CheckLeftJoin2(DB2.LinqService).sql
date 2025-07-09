BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"

