BeforeExecute
-- Firebird3 Firebird

SELECT 
	Cast(Floor(Extract(weekday from "t"."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" "t"

