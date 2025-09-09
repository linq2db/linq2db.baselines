BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @GuidNonReadonly Char(36) -- AnsiStringFixedLength
SET     @GuidNonReadonly = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidNonReadonly Char(36) -- AnsiStringFixedLength
SET     @GuidNonReadonly = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."GuidValue" = ? AND "e"."GuidNullableValue" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

