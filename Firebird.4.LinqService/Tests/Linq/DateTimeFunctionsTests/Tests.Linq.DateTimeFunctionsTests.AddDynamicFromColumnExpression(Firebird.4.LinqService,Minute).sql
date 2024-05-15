BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateAdd(Minute, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

