BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

