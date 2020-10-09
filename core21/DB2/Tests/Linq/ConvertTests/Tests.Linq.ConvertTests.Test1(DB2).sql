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
WHERE
	"t"."MoneyValue" * Decimal("t".ID, 29, 10) = 1.11
FETCH FIRST 2 ROWS ONLY

