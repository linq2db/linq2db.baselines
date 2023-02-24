BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			"p"."ChildID"
		FROM
			"Child" "p"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "p_1"

