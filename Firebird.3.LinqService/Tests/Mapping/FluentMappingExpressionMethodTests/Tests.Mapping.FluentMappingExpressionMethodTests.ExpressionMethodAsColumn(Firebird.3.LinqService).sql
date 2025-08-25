BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value",
	'M' || "t1"."Id"
FROM
	"InstanceClass" "t1"

