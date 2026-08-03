-- DB2 DB2.LUW DB2LUW
SELECT
	(BIGINT(DAYS("t"."FinishedOn") - DAYS("t"."StartedOn")) * 86400 + (MIDNIGHT_SECONDS("t"."FinishedOn") - MIDNIGHT_SECONDS("t"."StartedOn"))) * 10000000 + (MICROSECOND("t"."FinishedOn") - MICROSECOND("t"."StartedOn")) * 10
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

