BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID"
FROM
	(
		SELECT DISTINCT
			"ch"."ParentID"
		FROM
			"Child" "ch"
	) "t1"
ORDER BY
	"t1"."ParentID"

