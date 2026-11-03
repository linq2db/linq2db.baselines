-- Firebird.3 Firebird3
SELECT
	TRIM(TRAILING FROM Replace("t"."NCharColumn", "t"."VarCharColumn", 'x')),
	TRIM(TRAILING FROM Replace("t"."CharColumn", "t"."VarCharColumn", 'x'))
FROM
	"StringTypesTable" "t"
ORDER BY
	"t"."Id"

