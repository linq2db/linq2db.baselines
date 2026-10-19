-- Firebird.2.5 Firebird
SELECT
	CAST(CAST("d"."DateTimeValue" AS TimeStamp) AS Date)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from CAST("d"."DateTimeValue" AS TimeStamp)) > 0

