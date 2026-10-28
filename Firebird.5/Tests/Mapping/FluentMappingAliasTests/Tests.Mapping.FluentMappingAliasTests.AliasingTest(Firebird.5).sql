-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	"t"."Value",
	"t"."ValueStr"
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" > 1 AND
	"t"."Value" >= 104 AND
	"t"."Value" <= 115 AND
	"t"."ValueStr" STARTING WITH 'S'

-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	"t"."Value",
	"t"."ValueStr"
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" > 1 AND
	"t"."Value" >= 104 AND
	"t"."Value" <= 115 AND
	"t"."ValueStr" STARTING WITH 'S'

