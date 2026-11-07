-- DB2 DB2.LUW DB2LUW
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	"a"."Id",
	"b"."Id"
FROM
	"StringTypesTable" "a",
	"StringTypesTable" "b"
WHERE
	"b"."VarCharColumn" = RTRIM(Replace("a"."CharColumn", '?', CAST(@dash AS VarChar(1)))) OR
	"b"."VarCharColumn" IS NULL AND "a"."CharColumn" IS NULL

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

