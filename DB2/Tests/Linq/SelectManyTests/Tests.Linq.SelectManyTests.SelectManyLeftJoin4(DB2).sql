BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"

