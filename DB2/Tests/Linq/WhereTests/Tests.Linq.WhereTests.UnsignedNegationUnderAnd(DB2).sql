-- DB2 DB2.LUW DB2LUW
SELECT
	BitAnd(CAST("p".ID AS BigInt), CAST((4294967295 - CAST("p".ID + 4 AS BigInt)) AS BigInt))
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

