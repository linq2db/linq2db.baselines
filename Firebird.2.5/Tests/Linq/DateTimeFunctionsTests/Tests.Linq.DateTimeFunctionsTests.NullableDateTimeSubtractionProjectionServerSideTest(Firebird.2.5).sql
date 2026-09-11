-- Firebird.2.5 Firebird
SELECT
	CAST(DateDiff(millisecond, "t"."StartedOn", "t"."FinishedOn") * 10000 AS BigInt)
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

