-- Firebird.2.5 Firebird

SELECT
	Coalesce("t"."Value1", '') || "t"."Value2"
FROM
	"StringConcatNullEntity" "t"
ORDER BY
	"t".ID

-- Firebird.2.5 Firebird

SELECT
	"t1".ID,
	"t1"."Value1",
	"t1"."Value2"
FROM
	"StringConcatNullEntity" "t1"

