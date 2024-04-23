BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Mod(Extract(minute from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

