-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	CAST(CAST("r"."Grace" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000 > 30
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	CAST(CAST("r"."Required" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000 > 30
ORDER BY
	"r"."Id"

