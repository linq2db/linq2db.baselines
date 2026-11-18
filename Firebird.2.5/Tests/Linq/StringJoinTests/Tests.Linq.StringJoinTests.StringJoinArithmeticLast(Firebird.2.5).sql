-- Firebird.2.5 Firebird
SELECT
	"e"."Value1" || ',' || ("e"."Value1" * 2 + 1)
FROM
	"JoinProbeEntity" "e"

