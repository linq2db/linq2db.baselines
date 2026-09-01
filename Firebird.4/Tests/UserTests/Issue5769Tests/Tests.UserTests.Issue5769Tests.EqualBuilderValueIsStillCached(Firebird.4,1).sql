-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"JsonData" "r"
WHERE
	'sub.name' = "r"."Value"

