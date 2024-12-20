BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CAST(DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

