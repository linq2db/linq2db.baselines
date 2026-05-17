-- Firebird.5 Firebird4

SELECT
	Coalesce("t"."Value1", '') || Coalesce("t"."Value2", '') || "t"."Value3"
FROM
	"StringConcatThreeNullEntity" "t"
ORDER BY
	"t".ID

-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value3"
FROM
	"StringConcatThreeNullEntity" "t1"

