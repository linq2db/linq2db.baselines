-- Firebird.2.5 Firebird

SELECT
	Mod(Extract(yearday from "t"."DateTimeValue") + 1, 7)
FROM
	"LinqDataTypes" "t"

