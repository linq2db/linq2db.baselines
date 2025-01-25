BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(Extract(Month from "t"."DateTimeValue") - 1) / 3 + 1
FROM
	"LinqDataTypes" "t"

