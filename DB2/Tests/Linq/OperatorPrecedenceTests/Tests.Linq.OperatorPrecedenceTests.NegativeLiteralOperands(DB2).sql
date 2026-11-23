-- DB2 DB2.LUW DB2LUW
SELECT
	Decimal("r".A, 18, 10) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	-(-5.5) * "r".B
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("r".A AS Float) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("r".A AS Float) * 9.9999999999999995E-08
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

