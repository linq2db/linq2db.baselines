-- Firebird.2.5 Firebird

SELECT
	Mod(Extract(day from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

