-- Firebird.2.5 Firebird
SELECT
	Coalesce("e"."Name", '') || ("e"."Value1" + 1)
FROM
	"JoinProbeEntity" "e"

