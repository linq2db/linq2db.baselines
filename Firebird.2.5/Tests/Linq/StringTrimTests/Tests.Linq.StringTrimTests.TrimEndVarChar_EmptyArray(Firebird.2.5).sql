-- Firebird.2.5 Firebird

SELECT
	TRIM(TRAILING FROM ("t"."VarCharColumn" || '   '))
FROM
	"StringTrimTable" "t"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

