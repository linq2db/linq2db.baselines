-- DB2 DB2.LUW DB2LUW
SELECT
	-(-5 * "r".A),
	-("r".A * -5),
	-("r".A - -5),
	-(-5) + "r".A,
	-(-"r".A + "r".B)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

