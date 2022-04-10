BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Max("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID"

