-- DB2 DB2.LUW DB2LUW
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @search VarChar(1) -- String
SET     @search = 'Ж'

SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', CAST(@suffix AS NVarChar(3))),
	Replace("t"."VarCharColumn", 'A', CAST(@suffix AS NVarChar(3))),
	Replace("t"."VarCharColumn", CAST(@search AS NVarChar(1)), '-')
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

