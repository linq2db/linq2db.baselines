BeforeExecute
-- Firebird

SELECT 
	Mod(Cast(Floor(Extract(year from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

