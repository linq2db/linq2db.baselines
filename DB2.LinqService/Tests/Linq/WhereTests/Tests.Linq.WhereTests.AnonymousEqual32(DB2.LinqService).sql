BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	2 = "ch"."ParentID" AND 21 = "ch"."ChildID"

