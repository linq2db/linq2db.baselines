BeforeExecute
-- Firebird

SELECT 
	Mod(Cast(Floor(Extract(day from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

