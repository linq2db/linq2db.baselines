BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	DateAdd(Day, "t"."SmallIntValue" * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

