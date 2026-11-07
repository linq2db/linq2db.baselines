-- DB2 DB2.LUW DB2LUW
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"t"."Id",
	RTRIM(Replace("t"."CharColumn", 'A', CAST(@suffix AS NVarChar(3)))),
	RTRIM(Replace("t"."CharColumn", 'A', 'Ж'))
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

