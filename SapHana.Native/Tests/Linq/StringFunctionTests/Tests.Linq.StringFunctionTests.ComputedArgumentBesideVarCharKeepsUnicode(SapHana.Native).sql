-- SapHana.Native SapHana
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix_1 NVarChar(3) -- String
SET     @suffix_1 = 'Жук'
DECLARE @search NVarChar(1) -- String
SET     @search = 'Ж'

SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', :"suffix"),
	Replace("t"."VarCharColumn", 'A', :"suffix_1"),
	Replace("t"."VarCharColumn", :"search", '-')
FROM
	"StringTypesTable" "t"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

