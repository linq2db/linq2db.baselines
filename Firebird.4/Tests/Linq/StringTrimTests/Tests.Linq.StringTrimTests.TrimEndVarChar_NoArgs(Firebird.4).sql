-- Firebird.4 Firebird4

SELECT
	TRIM(TRAILING FROM (Coalesce("t"."VarCharColumn", '') || '   '))
FROM
	"StringTrimTable" "t"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

