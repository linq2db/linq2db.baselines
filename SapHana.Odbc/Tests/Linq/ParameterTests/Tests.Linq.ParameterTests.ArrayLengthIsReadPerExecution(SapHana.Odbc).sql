-- SapHana.Odbc SapHanaOdbc
DECLARE @arr Int -- Int32
SET     @arr = 1

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = ?
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @arr Int -- Int32
SET     @arr = 2

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = ?
LIMIT 2

