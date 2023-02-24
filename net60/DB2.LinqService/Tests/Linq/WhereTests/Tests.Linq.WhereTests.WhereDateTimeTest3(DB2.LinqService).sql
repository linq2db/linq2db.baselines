BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2009-09-27-00.00.00.000000'

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
	"_"."DateTimeValue" = @DateTimeValue

