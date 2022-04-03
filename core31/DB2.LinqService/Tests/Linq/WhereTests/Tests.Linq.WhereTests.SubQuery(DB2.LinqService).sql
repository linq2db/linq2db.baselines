BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ch"."ParentID" * 1000
FROM
	"Child" "ch"
WHERE
	"ch"."ParentID" * 1000 > 2000

