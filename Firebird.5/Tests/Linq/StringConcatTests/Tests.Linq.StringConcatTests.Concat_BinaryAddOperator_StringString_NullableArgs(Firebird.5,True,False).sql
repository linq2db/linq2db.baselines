-- Firebird.5 Firebird4

SELECT
	Coalesce("t"."Value1", '') || "t"."Value2"
FROM
	"StringConcatNullEntity" "t"
ORDER BY
	"t".ID

-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Value1",
	"t1"."Value2"
FROM
	"StringConcatNullEntity" "t1"

