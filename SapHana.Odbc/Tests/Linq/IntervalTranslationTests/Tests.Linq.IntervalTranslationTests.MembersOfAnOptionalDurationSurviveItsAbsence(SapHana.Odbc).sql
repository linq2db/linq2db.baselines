-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	CAST(MOD(CAST("r"."Grace" / 60 AS BigInt), 60) AS Integer),
	CAST("r"."Grace" AS Double) / 60,
	CAST("r"."Required" AS Double) / 60
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

