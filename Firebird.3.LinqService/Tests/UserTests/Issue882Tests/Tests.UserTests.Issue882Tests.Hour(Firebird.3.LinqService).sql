BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Mod(Extract(hour from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

