-- Firebird.3 Firebird3
SELECT
	CAST(CAST("d"."DateTimeValue" AS TimeStamp) AS Date)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from CAST("d"."DateTimeValue" AS TimeStamp)) > 0

