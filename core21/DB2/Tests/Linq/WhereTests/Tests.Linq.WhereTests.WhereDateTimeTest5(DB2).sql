BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date_1 Timestamp(20) -- DateTime
SET     @Date_1 = '2009-09-20-00.00.00.000000'

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
	Date("_"."DateTimeValue") = @Date_1

