-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(NULL AS Real) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			3.14748365E+09 as "Value_1"
		FROM
			"Person" "r"
	) "t1"

