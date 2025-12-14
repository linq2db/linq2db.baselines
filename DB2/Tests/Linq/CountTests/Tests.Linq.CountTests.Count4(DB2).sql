-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

