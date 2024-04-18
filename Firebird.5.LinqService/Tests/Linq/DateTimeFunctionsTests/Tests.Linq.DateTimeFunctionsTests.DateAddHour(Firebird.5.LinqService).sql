BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

