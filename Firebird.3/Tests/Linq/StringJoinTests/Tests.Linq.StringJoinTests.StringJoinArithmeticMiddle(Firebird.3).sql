-- Firebird.3 Firebird3
SELECT
	"e"."Id" || ',' || ("e"."Value1" - 3) || ',' || "e"."Id"
FROM
	"JoinProbeEntity" "e"

