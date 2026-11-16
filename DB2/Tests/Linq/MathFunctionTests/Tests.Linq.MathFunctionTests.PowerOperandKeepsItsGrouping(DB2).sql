-- DB2 DB2.LUW DB2LUW
SELECT
	Power(CAST("p".ID * 2 AS Float), 2)
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
	Power(CAST("p".ID + 1 AS Float), 2)
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
	Power(CAST(100 - "p".ID AS Float), 2)
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
	Power(CAST(-"p".ID AS Float), 2)
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
	-Power(CAST("p".ID AS Float), 2)
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
	Power(-2, CAST(Mod("p".ID, 3) + 1 AS Float))
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
	Power(CAST("p".ID AS Float), -1)
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

