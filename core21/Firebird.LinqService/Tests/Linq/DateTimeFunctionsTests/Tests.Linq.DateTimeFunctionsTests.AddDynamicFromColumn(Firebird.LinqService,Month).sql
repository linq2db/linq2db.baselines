BeforeExecute
-- Firebird

SELECT 
	DateAdd(Month, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

