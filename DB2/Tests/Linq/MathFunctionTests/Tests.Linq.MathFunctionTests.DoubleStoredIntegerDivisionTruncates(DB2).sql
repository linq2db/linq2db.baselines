-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("t".D AS Int) / 2
FROM
	"DoubleStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".D
FROM
	"DoubleStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id"
FROM
	"DoubleStoredIntegerTable" "t"
WHERE
	CAST("t".D AS Int) / 2 = -3
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".D
FROM
	"DoubleStoredIntegerTable" "t1"

