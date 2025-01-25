BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	DateAdd(Hour, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

