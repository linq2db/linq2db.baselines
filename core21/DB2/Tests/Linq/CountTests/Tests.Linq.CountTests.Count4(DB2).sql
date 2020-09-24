BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

