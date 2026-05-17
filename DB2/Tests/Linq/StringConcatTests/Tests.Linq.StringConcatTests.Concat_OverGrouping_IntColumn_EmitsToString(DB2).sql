-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GrpId",
	LISTAGG(RTrim(Char("g_1"."IntV")), '') WITHIN GROUP (ORDER BY "g_1".PK)
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

