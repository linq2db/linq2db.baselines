-- Firebird.2.5 Firebird
SELECT
	"e"."Id" || ',' || ("e"."Value1" - 3) || ',' || "e"."Id"
FROM
	"JoinProbeEntity" "e"

