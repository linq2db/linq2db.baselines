BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Year, 1, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

