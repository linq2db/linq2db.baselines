-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."GrpId",
	STRING_AGG(CAST("g_1"."IntV" AS NVarChar(11)), '' ORDER BY "g_1"."PK" NULLS FIRST)
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

