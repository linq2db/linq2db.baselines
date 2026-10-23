-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Grace" > 1800
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Required" > 1800
ORDER BY
	"r"."Id"

