BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

