-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', _utf8 x'D096'),
	Replace("t"."VarCharColumn", 'A', _utf8 x'D096')
FROM
	"StringTypesTable" "t"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

