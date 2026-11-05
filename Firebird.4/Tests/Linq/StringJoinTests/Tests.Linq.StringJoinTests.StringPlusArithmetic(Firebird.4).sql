-- Firebird.4 Firebird4
SELECT
	Coalesce("e"."Name", '') || ("e"."Value1" + 1)
FROM
	"JoinProbeEntity" "e"

