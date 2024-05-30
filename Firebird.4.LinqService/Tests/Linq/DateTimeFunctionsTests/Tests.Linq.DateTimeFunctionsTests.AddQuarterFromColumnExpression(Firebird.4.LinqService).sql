BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Month, (("t"."SmallIntValue" + 4) - 4) * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

