-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"JsonData" "r"
WHERE
	'sub.name' = "r"."Value"

