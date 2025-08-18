BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Lower(CAST("t"."Id" AS NVarChar(36)))
FROM
	"TableWithGuid" "t"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) LIKE '8f4-53%' ESCAPE '~'

