-- SapHana.Odbc SapHanaOdbc
DECLARE @flag Int -- Int32
SET     @flag = 4
DECLARE @flag Int -- Int32
SET     @flag = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Flags"
FROM
	"MappingTestClass" "t"
WHERE
	BITAND("t"."Flags", ?) = ?

