-- SapHana.Native SapHana
DECLARE @value TinyInt -- Byte
SET     @value = 0

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = :"value"

-- SapHana.Native SapHana
DECLARE @value TinyInt -- Byte
SET     @value = 0

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = :"value"

-- SapHana.Native SapHana
DECLARE @value TinyInt -- Byte
SET     @value = 0

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> :"value" OR "t"."Value" IS NULL

-- SapHana.Native SapHana
DECLARE @value TinyInt -- Byte
SET     @value = 0

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> :"value"

