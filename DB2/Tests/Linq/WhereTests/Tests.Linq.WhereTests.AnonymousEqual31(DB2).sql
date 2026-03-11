-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ParentID" = 2 AND "ch"."ChildID" = 21

