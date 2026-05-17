-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"
WHERE
	"ch"."ParentID" IS NULL

