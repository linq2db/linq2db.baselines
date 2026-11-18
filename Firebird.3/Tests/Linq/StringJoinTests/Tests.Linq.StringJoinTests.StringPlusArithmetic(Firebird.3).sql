-- Firebird.3 Firebird3
SELECT
	Coalesce("e"."Name", '') || ("e"."Value1" + 1)
FROM
	"JoinProbeEntity" "e"

