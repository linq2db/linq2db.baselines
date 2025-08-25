BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	(Extract(Month from "t"."DateTimeValue") - 1) / 3 + 1
FROM
	"LinqDataTypes" "t"

