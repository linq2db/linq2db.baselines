-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."GrpId",
	STRING_AGG(Lower(CAST("g_1"."GuidV" AS NVarChar(36))), '' ORDER BY "g_1"."PK" NULLS FIRST)
FROM
	"ConcatGroupedTypedEntity" "g_1"
GROUP BY
	"g_1"."GrpId"
ORDER BY
	"g_1"."GrpId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."PK",
	"t1"."GrpId",
	"t1"."GuidV",
	"t1"."IntV"
FROM
	"ConcatGroupedTypedEntity" "t1"

