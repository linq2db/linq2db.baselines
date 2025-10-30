-- Firebird.5 Firebird4

SELECT
	Mod(Extract(day from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

