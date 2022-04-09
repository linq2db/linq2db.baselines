BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH FIRST 1 ROWS ONLY

