BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Guid1 Char(36) -- AnsiStringFixedLength
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	"x"."Id",
	"x"."NullableGuid"
FROM
	"TableWithGuid" "x"
WHERE
	CAST("x"."NullableGuid" AS NVarChar(36)) IS NULL AND
	"x"."Id" = ?
LIMIT 2

