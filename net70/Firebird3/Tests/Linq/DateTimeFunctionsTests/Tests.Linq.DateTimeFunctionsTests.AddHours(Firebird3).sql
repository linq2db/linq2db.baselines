BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, 22, "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

