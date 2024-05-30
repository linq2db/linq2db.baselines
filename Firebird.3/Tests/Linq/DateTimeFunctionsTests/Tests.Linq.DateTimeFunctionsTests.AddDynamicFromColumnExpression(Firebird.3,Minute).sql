BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Minute, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

