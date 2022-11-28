BeforeExecute
-- Firebird3 Firebird

SELECT
	DateAdd(Day, "t"."SmallIntValue" * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

