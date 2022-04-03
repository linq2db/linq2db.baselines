BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT DISTINCT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "p"

