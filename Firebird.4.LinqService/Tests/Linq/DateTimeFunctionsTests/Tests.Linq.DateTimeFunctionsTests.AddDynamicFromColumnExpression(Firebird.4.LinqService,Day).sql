BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateAdd(Day, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

