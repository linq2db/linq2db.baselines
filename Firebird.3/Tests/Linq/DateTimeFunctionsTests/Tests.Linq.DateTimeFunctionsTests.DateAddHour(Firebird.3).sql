BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

