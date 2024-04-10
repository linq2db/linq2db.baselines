BeforeExecute
-- Firebird4 Firebird

SELECT
	Mod(Extract(month from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

