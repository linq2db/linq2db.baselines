BeforeExecute
-- Firebird

SELECT 
	Mod(Cast(Floor(Extract(hour from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

