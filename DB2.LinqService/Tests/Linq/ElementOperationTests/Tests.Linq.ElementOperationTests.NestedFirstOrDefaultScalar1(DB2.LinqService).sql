BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			"t1"."ChildID"
		FROM
			"Child" "t1"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "p"

