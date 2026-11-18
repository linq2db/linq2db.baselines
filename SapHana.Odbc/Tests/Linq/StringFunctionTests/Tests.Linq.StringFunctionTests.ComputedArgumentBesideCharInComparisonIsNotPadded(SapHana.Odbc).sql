-- SapHana.Odbc SapHanaOdbc
DECLARE @dash VarChar(1) -- AnsiString
SET     @dash = '-'

SELECT
	"a"."Id",
	"b"."Id"
FROM
	"StringTypesTable" "a",
	"StringTypesTable" "b"
WHERE
	"b"."VarCharColumn" = RTRIM(Replace("a"."CharColumn", '?', ?)) OR
	"b"."VarCharColumn" IS NULL AND "a"."CharColumn" IS NULL

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

