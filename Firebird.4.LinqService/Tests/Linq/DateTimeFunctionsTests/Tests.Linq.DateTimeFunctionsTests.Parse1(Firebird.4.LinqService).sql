BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CAST("d"."DateTimeValue" AS Date)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from "d"."DateTimeValue") > 0

