-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GrpId",
	LISTAGG(Lower(substr(hex("g_1"."GuidV"), 7, 2) || substr(hex("g_1"."GuidV"), 5, 2) || substr(hex("g_1"."GuidV"), 3, 2) || substr(hex("g_1"."GuidV"), 1, 2) || '-' || substr(hex("g_1"."GuidV"), 11, 2) || substr(hex("g_1"."GuidV"), 9, 2) || '-' || substr(hex("g_1"."GuidV"), 15, 2) || substr(hex("g_1"."GuidV"), 13, 2) || '-' || substr(hex("g_1"."GuidV"), 17, 4) || '-' || substr(hex("g_1"."GuidV"), 21, 12)), '') WITHIN GROUP (ORDER BY "g_1".PK)
FROM
	"ConcatGroupedTypedEntity" "g_1"
GROUP BY
	"g_1"."GrpId"
ORDER BY
	"g_1"."GrpId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".PK,
	"t1"."GrpId",
	"t1"."GuidV",
	"t1"."IntV"
FROM
	"ConcatGroupedTypedEntity" "t1"

