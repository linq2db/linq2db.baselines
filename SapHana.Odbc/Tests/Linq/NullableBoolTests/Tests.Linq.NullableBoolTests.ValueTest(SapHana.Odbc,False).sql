-- SapHana.Odbc SapHanaOdbc
DECLARE @value TinyInt(1) -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @value TinyInt(1) -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @value TinyInt(1) -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> ? OR "t"."Value" IS NULL

-- SapHana.Odbc SapHanaOdbc
DECLARE @value TinyInt(1) -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> ?

