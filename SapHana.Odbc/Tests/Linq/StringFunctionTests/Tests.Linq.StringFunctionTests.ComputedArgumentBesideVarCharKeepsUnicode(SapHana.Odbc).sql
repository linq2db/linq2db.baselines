-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @search NVarChar(1) -- String
SET     @search = 'Ж'

SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', ?),
	Replace("t"."VarCharColumn", 'A', ?),
	Replace("t"."VarCharColumn", ?, '-')
FROM
	"StringTypesTable" "t"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

