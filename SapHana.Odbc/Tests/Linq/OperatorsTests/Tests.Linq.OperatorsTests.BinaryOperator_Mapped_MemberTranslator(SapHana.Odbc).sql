-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 5
DECLARE @value Int -- Int32
SET     @value = 5
DECLARE @value Int -- Int32
SET     @value = 5

SELECT
	"r"."Id",
	"r"."Field",
	"r"."FieldN",
	"r"."FieldClass"
FROM
	"OperatorTable" "r"
WHERE
	"r"."Field" + 3 = ? AND "r"."FieldN" + 3 = ? AND "r"."FieldClass" + 3 = ?

