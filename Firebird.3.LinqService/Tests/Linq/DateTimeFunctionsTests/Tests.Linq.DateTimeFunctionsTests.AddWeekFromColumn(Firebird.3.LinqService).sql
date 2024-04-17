BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Day, "t"."SmallIntValue" * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

