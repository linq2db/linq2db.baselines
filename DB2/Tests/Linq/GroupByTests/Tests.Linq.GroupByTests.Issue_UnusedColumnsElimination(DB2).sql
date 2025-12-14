-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Person" "r"
		GROUP BY
			"r"."PersonID",
			"r"."PersonID"
	) "t1"

