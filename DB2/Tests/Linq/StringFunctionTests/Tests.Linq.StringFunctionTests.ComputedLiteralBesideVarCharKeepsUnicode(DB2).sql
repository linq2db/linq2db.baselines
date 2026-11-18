-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', 'Ж'),
	Replace("t"."VarCharColumn", 'A', 'Ж')
FROM
	"StringTypesTable" "t"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

