BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
ORDER BY
	Mod("ch"."ChildID", 2) DESC

