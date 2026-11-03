-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', _utf8 x'D096'),
	Replace("t"."VarCharColumn", 'A', _utf8 x'D096')
FROM
	"StringTypesTable" "t"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

