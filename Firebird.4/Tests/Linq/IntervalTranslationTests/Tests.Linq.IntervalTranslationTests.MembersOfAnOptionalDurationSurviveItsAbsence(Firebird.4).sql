-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	CAST(Mod("r"."Grace" / 60, 60) AS Int),
	CAST("r"."Grace" AS DOUBLE PRECISION) / 60,
	CAST("r"."Required" AS DOUBLE PRECISION) / 60
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

