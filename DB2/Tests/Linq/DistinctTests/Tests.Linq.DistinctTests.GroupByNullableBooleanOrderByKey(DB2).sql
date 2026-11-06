-- DB2 DB2.LUW DB2LUW
SELECT
	"g_1"."BoolValue",
	COUNT(*)
FROM
	"LinqDataTypes" "g_1"
GROUP BY
	"g_1"."BoolValue"
ORDER BY
	"g_1"."BoolValue"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

