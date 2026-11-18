-- DB2 DB2.LUW DB2LUW
SELECT
	RTRIM(Replace("t"."NCharColumn", "t"."VarCharColumn", 'x')),
	RTRIM(Replace("t"."CharColumn", "t"."VarCharColumn", 'x'))
FROM
	"StringTypesTable" "t"
ORDER BY
	"t"."Id"

