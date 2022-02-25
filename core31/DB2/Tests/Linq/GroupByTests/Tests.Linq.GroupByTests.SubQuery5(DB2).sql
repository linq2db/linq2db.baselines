BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Sum("ch"."ParentID")
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "pg" ON "ch"."ParentID" = "pg"."ParentID"
GROUP BY
	"ch"."ChildID"

