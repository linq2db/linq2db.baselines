BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Mod(Extract(yearday from "t"."DateTimeValue") + 1, 7)
FROM
	"LinqDataTypes" "t"

