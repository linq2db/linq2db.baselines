BeforeExecute
-- Firebird

SELECT 
	Cast(Floor(Extract(month from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

