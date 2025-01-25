BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"t1"."ParentID"
FROM
	(
		SELECT
			"ch"."ParentID"
		FROM
			"Child" "ch"
		ORDER BY
			"ch"."ParentID"
		FETCH NEXT 4 ROWS ONLY
	) "t1"

