-- Firebird.5 Firebird4
SELECT
	CAST(DateDiff(millisecond, "t"."StartedOn", "t"."FinishedOn") * 10000 AS BigInt)
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

