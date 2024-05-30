BeforeExecute
-- Firebird.5 Firebird4

SELECT
	DateAdd(Year, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

