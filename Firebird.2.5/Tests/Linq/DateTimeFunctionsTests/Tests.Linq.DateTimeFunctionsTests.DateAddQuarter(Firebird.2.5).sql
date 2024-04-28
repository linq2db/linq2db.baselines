BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Month, -3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

