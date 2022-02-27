BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor(Extract(month from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

