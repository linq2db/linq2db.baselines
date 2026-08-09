-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	CAST(Mod((CAST("r"."Grace" AS BigInt) * 10000000) / 600000000, 60) AS Int),
	CAST(CAST("r"."Grace" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000,
	CAST(CAST("r"."Required" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

