-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	CAST(CAST(Floor("r".F) AS Int) AS Float)
FROM
	"DoubleValue" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".F
FROM
	"DoubleValue" "t1"

