-- DB2 DB2.LUW DB2LUW

SELECT
	RTRIM("t"."VarCharColumn" || '...', '.')
FROM
	"StringTrimTable" "t"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

