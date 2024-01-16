BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(day from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

