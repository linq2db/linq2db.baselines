-- Firebird.5 Firebird4
SELECT
	"e"."Value1" || ',' || ("e"."Value1" * 2 + 1)
FROM
	"JoinProbeEntity" "e"

