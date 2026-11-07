-- Firebird.5 Firebird4
SELECT
	Coalesce("e"."Name", '') || ("e"."Value1" + 1)
FROM
	"JoinProbeEntity" "e"

