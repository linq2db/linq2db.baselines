-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."StatsTypeId",
	"st"."FullName",
	"g_1"."GroupId"
FROM
	"GroupStatsType" "g_1"
		LEFT JOIN "StatsType" "st" ON "st"."Id" = "g_1"."StatsTypeId"

