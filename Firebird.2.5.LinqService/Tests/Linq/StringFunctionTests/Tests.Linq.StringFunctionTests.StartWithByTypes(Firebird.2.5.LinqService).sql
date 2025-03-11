BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"StringTypesTable" "t"
WHERE
	"t"."CharColumn" STARTING WITH 'some' AND
	"t"."NCharColumn" STARTING WITH 'some' AND
	"t"."VarCharColumn" STARTING WITH 'some' AND
	"t"."NVarCharColumn" STARTING WITH 'some'

