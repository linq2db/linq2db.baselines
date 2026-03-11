-- Firebird.5 Firebird4

SELECT
	Mod(Extract(hour from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

