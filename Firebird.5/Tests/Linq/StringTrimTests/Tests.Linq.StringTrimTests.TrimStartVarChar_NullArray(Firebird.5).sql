-- Firebird.5 Firebird4

SELECT
	TRIM(LEADING FROM ('   ' || Coalesce("t"."VarCharColumn", '')))
FROM
	"StringTrimTable" "t"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

