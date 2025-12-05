-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value",
	'M' || "t1"."Id"
FROM
	"InstanceClass" "t1"

