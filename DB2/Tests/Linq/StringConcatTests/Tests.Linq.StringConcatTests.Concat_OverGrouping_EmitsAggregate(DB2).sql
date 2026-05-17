-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GrpId",
	LISTAGG(Coalesce("g_1"."Value", ''), '') WITHIN GROUP (ORDER BY "g_1".PK)
FROM
	"ConcatGroupedEntity" "g_1"
GROUP BY
	"g_1"."GrpId"
ORDER BY
	"g_1"."GrpId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".PK,
	"t1"."GrpId",
	"t1"."Value"
FROM
	"ConcatGroupedEntity" "t1"

