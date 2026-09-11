-- DB2 DB2.LUW DB2LUW
SELECT
	(CAST(Days("t"."FinishedOn") AS BigInt) - CAST(Days("t"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("t"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("t"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("t"."FinishedOn") AS BigInt) - CAST(Microsecond("t"."StartedOn") AS BigInt)) * 10
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

