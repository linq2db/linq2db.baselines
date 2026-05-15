-- Firebird.3 Firebird3

SELECT
	TRIM(LEADING FROM ('   ' || "t"."VarCharColumn"))
FROM
	"StringTrimTable" "t"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

