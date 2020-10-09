BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor(Extract(day from "t"."DateTimeValue")) as int) > 0

