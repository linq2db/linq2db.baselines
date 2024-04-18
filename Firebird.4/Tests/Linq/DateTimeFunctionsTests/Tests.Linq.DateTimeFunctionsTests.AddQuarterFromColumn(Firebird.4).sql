BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

