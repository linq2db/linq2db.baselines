-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Grace" > 1800
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Required" > 1800
ORDER BY
	"r"."Id"

