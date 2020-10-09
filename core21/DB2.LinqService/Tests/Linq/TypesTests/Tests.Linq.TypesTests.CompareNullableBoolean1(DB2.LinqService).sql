BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."BinaryValue", 
	"t"."SmallIntValue", 
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param_1 SmallInt(4) -- Int16
SET     @param_1 = 1

SELECT 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."BinaryValue", 
	"t"."SmallIntValue", 
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."BoolValue" = @param_1

