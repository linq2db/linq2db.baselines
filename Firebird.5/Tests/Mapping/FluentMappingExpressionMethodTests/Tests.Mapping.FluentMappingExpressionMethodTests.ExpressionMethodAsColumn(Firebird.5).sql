BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value",
	'M' || "t1"."Id"
FROM
	"InstanceClass" "t1"

