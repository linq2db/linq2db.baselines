-- Firebird.3 Firebird3

SELECT
	Mod(CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

