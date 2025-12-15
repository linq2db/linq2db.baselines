-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = FALSE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = FALSE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = FALSE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value OR "t"."Value" IS NULL

-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = FALSE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value

