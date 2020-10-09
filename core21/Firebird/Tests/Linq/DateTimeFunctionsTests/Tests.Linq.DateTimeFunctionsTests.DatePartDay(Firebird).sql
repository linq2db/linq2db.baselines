BeforeExecute
-- Firebird

SELECT 
	Cast(Floor(Extract(day from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

