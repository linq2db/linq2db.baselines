-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Grace" > 1800
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Required" > 1800
ORDER BY
	"r"."Id"

