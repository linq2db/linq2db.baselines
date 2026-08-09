-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	CAST(MOD((CAST("r"."Grace" AS BigInt) * 10000000) / 600000000, 60) AS Integer),
	CAST(CAST("r"."Grace" AS BigInt) * 10000000 AS Double) / 600000000,
	CAST(CAST("r"."Required" AS BigInt) * 10000000 AS Double) / 600000000
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

