-- Firebird.5 Firebird4

SELECT
	Mod(Extract(minute from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

