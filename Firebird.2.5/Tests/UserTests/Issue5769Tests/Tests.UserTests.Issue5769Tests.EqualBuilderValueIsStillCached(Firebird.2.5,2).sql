-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"JsonData" "r"
WHERE
	'sub.name' = "r"."Value"

