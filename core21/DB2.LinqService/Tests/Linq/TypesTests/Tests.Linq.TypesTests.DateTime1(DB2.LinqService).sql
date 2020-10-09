BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date_1 Timestamp(20) -- DateTime
SET     @Date_1 = '2009-09-20-00.00.00.000000'

SELECT 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."DateTimeValue2", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."SmallIntValue", 
	"t"."IntValue", 
	"t"."BigIntValue", 
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	Date("t"."DateTimeValue") > @Date_1

