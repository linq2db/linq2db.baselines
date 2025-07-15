BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p",
	"Child" "ch"
WHERE
	"p"."ParentID" = "ch"."ParentID"

