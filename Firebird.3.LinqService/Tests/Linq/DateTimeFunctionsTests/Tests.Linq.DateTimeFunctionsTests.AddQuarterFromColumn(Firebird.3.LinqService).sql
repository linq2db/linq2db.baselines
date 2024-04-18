BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

