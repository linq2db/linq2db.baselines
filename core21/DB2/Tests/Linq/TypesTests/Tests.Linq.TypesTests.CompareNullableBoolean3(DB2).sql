BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param2_1 SmallInt(4) -- Int16
SET     @param2_1 = 0

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
	"t"."BoolValue" = @param2_1

