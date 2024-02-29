BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor(Extract(week from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

