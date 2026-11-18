-- Firebird.3 Firebird3
SELECT
	"e"."Value1" || ',' || ("e"."Value1" * 2 + 1)
FROM
	"JoinProbeEntity" "e"

