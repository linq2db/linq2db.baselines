BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ParentID" + 1
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID" + 1

