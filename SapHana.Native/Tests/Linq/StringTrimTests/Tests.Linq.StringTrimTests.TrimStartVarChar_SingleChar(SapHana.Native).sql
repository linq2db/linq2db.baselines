-- SapHana.Native SapHana
SELECT
	LTRIM("t"."VarCharColumn", '.')
FROM
	"StringTrimTable" "t"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

