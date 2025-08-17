BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(Extract(Month from "t"."DateTimeValue") - 1) / 3 + 1
FROM
	"LinqDataTypes" "t"

