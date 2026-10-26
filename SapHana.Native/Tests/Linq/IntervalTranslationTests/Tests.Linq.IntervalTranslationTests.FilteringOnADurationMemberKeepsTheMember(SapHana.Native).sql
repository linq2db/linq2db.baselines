-- SapHana.Native SapHana
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Grace" > 1800
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"r"."Id"
FROM
	"OptionalDurationRow" "r"
WHERE
	"r"."Required" > 1800
ORDER BY
	"r"."Id"

