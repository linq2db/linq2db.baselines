BeforeExecute
-- Firebird

SELECT
	DateAdd(Year, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

