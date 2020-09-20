BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = Floor(Float("ch"."ChildID") / 10)
WHERE
	"ch"."ParentID" = "p"."ParentID"

