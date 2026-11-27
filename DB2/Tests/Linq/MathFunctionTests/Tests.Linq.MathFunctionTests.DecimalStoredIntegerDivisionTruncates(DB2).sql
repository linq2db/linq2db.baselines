-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("t".X AS Int) / 2
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id"
FROM
	"DecimalStoredIntegerTable" "t"
WHERE
	CAST("t".X AS Int) / 2 = -3
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @two Decimal(4)
SET     @two = 2

SELECT
	CAST("t".X AS Int) / CAST(@two AS Int)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("t".X + 1 AS Int) / 2
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(-"t".X AS Int) / 2
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(Abs("t".X) AS Int) / 2
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	60 / CAST("t".X AS Int)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("t".X AS Int) / CAST("t".X2 AS Int)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".X,
	"t1".X2
FROM
	"DecimalStoredIntegerTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(SUM("g_1".X) AS Int) / 2
FROM
	"DecimalStoredIntegerTable" "g_1"
FETCH NEXT 2 ROWS ONLY

