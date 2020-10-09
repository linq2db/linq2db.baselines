BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
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
	"t"."MoneyValue" * Cast("t".ID as Decimal(18,10)) = 1.11

