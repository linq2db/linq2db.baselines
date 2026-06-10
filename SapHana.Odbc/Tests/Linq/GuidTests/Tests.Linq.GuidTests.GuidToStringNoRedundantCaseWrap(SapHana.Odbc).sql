-- SapHana.Odbc SapHanaOdbc

SELECT
	Lower(CAST("t"."Id" AS NVarChar(36)))
FROM
	"TableWithGuid" "t"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) = 'x'

