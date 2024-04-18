BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, 22, "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

