BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."BinaryValue",
	"_"."SmallIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	"_"."DateTimeValue" > CAST('2009-01-01' AS timestamp)

