BeforeExecute
-- Firebird3 Firebird

SELECT
	Mod(Cast(Floor(Extract(yearday from "t"."DateTimeValue")) as int) + 1, 7)
FROM
	"LinqDataTypes" "t"

