BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
ORDER BY
	"ch"."ParentID",
	"ch"."ChildID"
OFFSET 3 ROWS

