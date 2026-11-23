-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST("r"."A" + "r"."B" AS NVarChar(11)),
	CAST("r"."A" - "r"."B" AS NVarChar(11)),
	CAST("r"."A" * "r"."B" AS NVarChar(11)),
	CAST(CAST("r"."A" / "r"."B" AS Integer) AS NVarChar(11)),
	CAST(MOD("r"."A", "r"."B") AS NVarChar(11)),
	CAST(BITAND("r"."A", "r"."B") AS NVarChar(11)),
	CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") AS NVarChar(11)),
	CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 AS NVarChar(11)),
	CAST(-"r"."A" AS NVarChar(11)),
	CAST(BITNOT("r"."A") AS NVarChar(11))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

