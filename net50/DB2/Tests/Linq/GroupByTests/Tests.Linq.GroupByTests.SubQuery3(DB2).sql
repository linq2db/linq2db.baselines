BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ChildID" + 1,
	Sum("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID" + 1

