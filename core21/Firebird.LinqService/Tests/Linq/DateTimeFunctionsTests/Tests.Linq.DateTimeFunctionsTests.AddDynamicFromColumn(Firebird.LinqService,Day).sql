BeforeExecute
-- Firebird

SELECT 
	DateAdd(Day, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

