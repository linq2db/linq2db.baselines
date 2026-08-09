-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	CAST(CAST("r"."Grace" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000 > 30
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	CAST(CAST("r"."Required" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000 > 30
ORDER BY
	"r"."Id"

