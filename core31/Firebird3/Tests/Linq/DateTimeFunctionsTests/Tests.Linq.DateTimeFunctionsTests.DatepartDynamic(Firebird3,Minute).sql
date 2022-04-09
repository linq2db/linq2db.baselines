BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor(Extract(minute from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

