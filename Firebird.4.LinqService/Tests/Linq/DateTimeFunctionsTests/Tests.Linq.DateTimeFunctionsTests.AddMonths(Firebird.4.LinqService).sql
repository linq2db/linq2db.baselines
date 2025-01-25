BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Month, -2, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

