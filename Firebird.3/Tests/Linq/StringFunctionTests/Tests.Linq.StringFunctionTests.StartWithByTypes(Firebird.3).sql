-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."CharColumn",
	"t"."NCharColumn",
	"t"."VarCharColumn",
	"t"."NVarCharColumn"
FROM
	"StringTypesTable" "t"
WHERE
	"t"."CharColumn" STARTING WITH 'some' AND
	"t"."NCharColumn" STARTING WITH 'some' AND
	"t"."VarCharColumn" STARTING WITH 'some' AND
	"t"."NVarCharColumn" STARTING WITH 'some'

