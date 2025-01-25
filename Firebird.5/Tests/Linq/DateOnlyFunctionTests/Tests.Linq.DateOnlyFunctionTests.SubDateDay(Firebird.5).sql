BeforeExecute
-- Firebird.5 Firebird4

SELECT
	DateDiff(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

