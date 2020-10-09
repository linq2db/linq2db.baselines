BeforeExecute
-- Firebird3 Firebird

SELECT 
	Mod(Cast(Floor(Extract(month from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

