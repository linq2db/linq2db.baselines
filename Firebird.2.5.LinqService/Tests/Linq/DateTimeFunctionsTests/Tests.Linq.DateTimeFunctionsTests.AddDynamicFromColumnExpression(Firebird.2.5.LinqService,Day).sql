BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	DateAdd(Day, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

