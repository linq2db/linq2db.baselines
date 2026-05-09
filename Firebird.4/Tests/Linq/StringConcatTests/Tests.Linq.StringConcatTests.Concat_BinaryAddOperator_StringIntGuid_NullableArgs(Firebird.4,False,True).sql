-- Firebird.4 Firebird4

SELECT
	"t"."Value1" || Coalesce("t"."Value2", '') || Coalesce(CAST(Lower(UUID_TO_CHAR("t"."Value3")) AS VarChar(36) CHARACTER SET UNICODE_FSS), '')
FROM
	"StringConcatIntGuidNullEntity" "t"
ORDER BY
	"t".ID

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value3"
FROM
	"StringConcatIntGuidNullEntity" "t1"

