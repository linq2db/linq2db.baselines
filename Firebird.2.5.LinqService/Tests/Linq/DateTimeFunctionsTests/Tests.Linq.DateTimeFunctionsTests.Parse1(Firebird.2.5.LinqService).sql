BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST("d"."DateTimeValue" AS Date)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from "d"."DateTimeValue") > 0

