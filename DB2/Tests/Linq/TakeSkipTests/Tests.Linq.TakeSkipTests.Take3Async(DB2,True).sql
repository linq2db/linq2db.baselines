BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" > 3 OR "ch"."ChildID" < 4
FETCH NEXT 3 ROWS ONLY

