-- Firebird.2.5 Firebird

SELECT
	Mod(CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

