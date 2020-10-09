BeforeExecute
-- Firebird

SELECT 
	DateAdd(Second, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

