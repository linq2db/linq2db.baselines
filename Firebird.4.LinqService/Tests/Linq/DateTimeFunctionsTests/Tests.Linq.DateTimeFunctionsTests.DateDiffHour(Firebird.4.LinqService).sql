BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateDiff(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

