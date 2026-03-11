-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	1,
	CAST("it"."SmallIntValue" <> 0 AS smallint)
FROM
	"LinqDataTypes" "it"

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

