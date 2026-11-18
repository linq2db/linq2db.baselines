-- DB2 DB2.LUW DB2LUW
SELECT
	Power(2, Power(CAST(Mod("p".ID, 3) + 1 AS Float), 2))
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	Power(Power(CAST(Mod("p".ID, 3) + 1 AS Float), 2), 3)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	Power(2, Decimal(Power(CAST(Decimal(Mod("p".ID, 3) + 1, 18, 10) AS Float), CAST(2 AS Float)), 18, 10))
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	Power(2, Power(CAST(Mod("p"."Value1", 3) + 1 AS Float), 2))
FROM
	"Parent" "p"
WHERE
	"p"."Value1" IS NOT NULL
ORDER BY
	"p"."ParentID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

