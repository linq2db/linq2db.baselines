-- SapHana.Odbc SapHanaOdbc

SELECT
	Lower(CAST("t"."Id" AS NVarChar(36)))
FROM
	"TableWithGuid" "t"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE '%63d-0f%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE 'bc7b6%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE '8f4-53%' ESCAPE '~'

